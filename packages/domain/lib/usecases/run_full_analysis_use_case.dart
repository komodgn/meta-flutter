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
    final galleryImages = await galleryRepository.getAllGalleryImages();
    final currentIds = galleryImages.map((e) => e.id).toList();
    final alreadyIds = await imageAnalysisRepository.getAlreadyAnalyzedIds();
    final dbName = await neo4jRepository.getDatabaseName();

    // Remove images that no longer exist in the local gallery
    await _deleteMissingImages(
      dbName: dbName,
      alreadyIds: alreadyIds,
      currentIds: currentIds,
    );

    // Identify new images to be uploaded
    final addIds = currentIds.where((id) => !alreadyIds.contains(id)).toList();

    // Upload and process the identified new images
    if (addIds.isNotEmpty) {
      await _uploadAndProcessImages(addIds: addIds, dbName: dbName);
    }

    // Sync any naming mismatches between local and server
    await _syncMismatchedNames(dbName: dbName);
  }

  // Removes metadata and server-side data for images no longer present in the gallery
  Future<void> _deleteMissingImages({
    required String dbName,
    required List<String> alreadyIds,
    required List<String> currentIds,
  }) async {
    final deleteIds = alreadyIds
        .where((path) => !currentIds.contains(path))
        .toList();

    for (var i = 0; i < deleteIds.length; i++) {
      final id = deleteIds[i];

      final savedFileName = await imageAnalysisRepository.getFileNameById(
        id: id,
      );
      final fileName = savedFileName ?? "unknown.jpg";

      // Triger deletion on both Web and AI servers
      final isSuccess = await imageAnalysisRepository.deleteImageFromServer(
        dbName: dbName,
        fileName: fileName,
      );

      if (isSuccess) {
        // Remove from local tracking database upon success
        await imageAnalysisRepository.deleteAnalyzedId(id: id);
      }
    }
  }

  // Upload images in chunks and triggers the analysis finish process
  Future<void> _uploadAndProcessImages({
    required List<String> addIds,
    required String dbName,
  }) async {
    const chunkSize = 10;
    final allSuccessfulData = <({String id, String fileName})>[];

    for (var i = 0; i < addIds.length; i += chunkSize) {
      final end = (i + chunkSize < addIds.length)
          ? i + chunkSize
          : addIds.length;
      final chunk = addIds.sublist(i, end);

      // Upload images within a chunk in parallel
      final results = await Future.wait(
        chunk.map((id) async {
          final fileName = await galleryRepository.getFileName(id: id);
          if (fileName == null) return null;

          final bytes = await galleryRepository.getImageBytesById(id);
          if (bytes == null) return null;

          final isSuccess = await imageAnalysisRepository.uploadSingleImage(
            dbName: dbName,
            bytes: bytes,
            fileName: fileName,
          );

          return isSuccess ? (id: id, fileName: fileName) : null;
        }),
      );

      // Filter successfully uploaded images for final processing
      final successfulData = results
          .whereType<({String id, String fileName})>()
          .toList();
      allSuccessfulData.addAll(successfulData);
    }

    if (allSuccessfulData.isNotEmpty) {
      await _processAnalysisFinish(dbName, allSuccessfulData);
    }
  }

  // Finalizes analysis for a chunk and persists discovered person/face data
  Future<void> _processAnalysisFinish(
    String dbName,
    List<({String id, String fileName})> successfulData,
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
      await imageAnalysisRepository.saveAnalyzedId(successfulData);
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
          dbName: dbName,
          oldName: serverName,
          newName: actualName,
        );
      } catch (e) {
        throw Exception();
      }
    }
  }
}
