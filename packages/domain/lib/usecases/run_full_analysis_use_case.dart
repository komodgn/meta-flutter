import 'package:domain/repositories/gallery_repository.dart';
import 'package:domain/repositories/image_analysis_repository.dart';
import 'package:domain/repositories/neo4j_repository.dart';
import 'package:domain/repositories/person_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RunFullAnalysisUseCase {
  final ImageAnalysisRepository imageAnalysisRepository;
  final GalleryRepository galleryRepository;
  final PersonRepository personRepository;
  final Neo4jRepository neo4jRepository;

  RunFullAnalysisUseCase({
    required this.imageAnalysisRepository,
    required this.galleryRepository,
    required this.personRepository,
    required this.neo4jRepository,
  });

  // Entry point
  Future<void> execute() async {
    // Fetch initial data required for syschronization
    final currentUris = await galleryRepository.getAllGalleryImages();
    final alreadyPaths = await imageAnalysisRepository
        .getAlreadyAnalyzedPaths();
    final dbName = await neo4jRepository.getDatabaseName();

    // Remove images that no longer exist in the local gallery
    await _deleteMissingImages(
      dbName: dbName,
      alreadyPaths: alreadyPaths,
      currentPaths: currentUris,
    );

    // Identify new images to be uploaded
    final addUris = currentUris
        .where((uri) => !alreadyPaths.contains(uri))
        .toList();

    // Upload and process the identified new images
    if (addUris.isNotEmpty) {
      await _uploadAndProcessImages(addUris: addUris, dbName: dbName);
    }

    // Sync any naming mismatches between local and server
    await _syncMismatchedNames(dbName: dbName);
  }

  // Removes metadata and server-side data for images no longer present in the gallery
  Future<void> _deleteMissingImages({
    required String dbName,
    required List<String> alreadyPaths,
    required List<String> currentPaths,
  }) async {
    final deletePaths = alreadyPaths
        .where((path) => !currentPaths.contains(path))
        .toList();

    for (var i = 0; i < deletePaths.length; i++) {
      final pathString = deletePaths[i];

      final savedFileName = await imageAnalysisRepository.getFileNameByPath(
        path: pathString,
      );
      final fileName = savedFileName ?? "unknown.jpg";

      // Triger deletion on both Web and AI servers
      final isSuccess = await imageAnalysisRepository.deleteImageFromServer(
        dbName: dbName,
        fileName: fileName,
      );

      if (isSuccess) {
        // Remove from local tracking database upon success
        await imageAnalysisRepository.deleteAnalyzedPath(path: pathString);
      }
    }
  }

  // Upload images in chunks and triggers the analysis finish process
  Future<void> _uploadAndProcessImages({
    required List<String> addUris,
    required String dbName,
  }) async {
    const chunkSize = 10;

    for (var i = 0; i < addUris.length; i += chunkSize) {
      final end = (i + chunkSize < addUris.length)
          ? i + chunkSize
          : addUris.length;
      final chunk = addUris.sublist(i, end);

      // Upload images within a chunk in parallel
      final results = await Future.wait(
        chunk.map((uri) async {
          final fileName = await galleryRepository.getFileName(uri: uri);
          if (fileName == null) return null;

          final isSuccess = await imageAnalysisRepository.uploadSingleImage(
            dbName: dbName,
            path: uri,
            fileName: fileName,
          );

          return isSuccess ? (path: uri, fileName: fileName) : null;
        }),
      );

      // Filter successfully uploaded images for final processing
      final successfulData = results
          .whereType<({String path, String fileName})>()
          .toList();

      if (successfulData.isNotEmpty) {
        await _processAnalysisFinish(successfulData, dbName);
      }
    }
  }

  // Finalizes analysis for a chunk and persists discovered person/face data
  Future<void> _processAnalysisFinish(
    List<({String path, String fileName})> successfulData,
    String dbName,
  ) async {
    // Get the sequence index for new person identification
    final lastIndex = await imageAnalysisRepository
        .getLastAnalyzedPersonIndex();

    // Notify server that the chunk is ready for face clustering
    final response = await imageAnalysisRepository.finishAnalysis(
      dbName: dbName,
      lastIndex: lastIndex,
    );

    // Persist the updated person index from the server
    if (response.newMaxIndex > lastIndex) {
      await imageAnalysisRepository.setLastAnalyzedPersonIndex(
        index: response.newMaxIndex,
      );
    }

    // Process and save person/face metadata returned by the AI server
    for (final personData in response.persons) {
      if (personData.isFaceExit) {
        final existingId = await personRepository.getPersonIdBySystemName(
          systemName: personData.systemName,
        );

        if (existingId != null) {
          // Map discovered face to an existing person record
          await personRepository.insertFace(
            personId: existingId,
            systemName: personData.systemName,
            imageBytes: personData.imageBytes!,
          );
        } else {
          // Create a new person record for a first-time discovery
          await personRepository.insertPersonAndFace(
            systemName: personData.systemName,
            imageBytes: personData.imageBytes!,
          );
        }
      }
    }

    // Mark these gallery paths as 'analyzed' in the local database
    if (successfulData.isNotEmpty) {
      await imageAnalysisRepository.saveAnalyzedPath(successfulData);
    }
  }

  // Synchronizes naming discrepancies between local labels and server identifiers
  Future<void> _syncMismatchedNames({required String dbName}) async {
    final mismatches = await personRepository.getMismatchedFaceNames();

    for (final mismatch in mismatches) {
      final serverName = mismatch.serverName;
      final actualName = mismatch.actualName;

      try {
        await personRepository.changePersonNameOnServer(
          oldName: serverName,
          newName: actualName,
        );
      } catch (e) {
        throw Exception();
      }
    }
  }
}
