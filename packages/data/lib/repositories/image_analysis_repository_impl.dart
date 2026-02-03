import 'dart:typed_data';
import 'package:data/datasources/local/app_database.dart';
import 'package:data/datasources/local/prefs/analysis_metadata_storage.dart';
import 'package:data/mappers/analysis_mapper.dart';
import 'package:data/models/request/delete_image_request.dart';
import 'package:data/services/ai_service.dart';
import 'package:data/services/web_service.dart';
import 'package:dio/dio.dart';
import 'package:data/datasources/local/daos/analyzed_image_dao.dart';
import 'package:domain/entities/analysis_result.dart';
import 'package:domain/repositories/image_analysis_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ImageAnalysisRepository)
class ImageAnalysisRepositoryImpl implements ImageAnalysisRepository {
  final WebService webService;
  final AIService aiService;
  final AnalyzedImageDao analyzedImageDao;
  final AnalysisMetadataStorage analysisMetadataStorage;

  ImageAnalysisRepositoryImpl({
    required this.webService,
    required this.aiService,
    required this.analyzedImageDao,
    required this.analysisMetadataStorage,
  });

  @override
  Future<List<String>> getAlreadyAnalyzedIds() async {
    return await analyzedImageDao.getAllAnalyzedIds();
  }

  @override
  Future<String?> getFileNameById({required String id}) async {
    return await analyzedImageDao.getFileNameById(id);
  }

  @override
  Future<bool> uploadSingleImage({
    required String dbName,
    required Uint8List bytes,
    required String fileName,
  }) async {
    try {
      await Future.wait([
        aiService.uploadImage(
          dbName: dbName,
          image: MultipartFile.fromBytes(bytes, filename: fileName),
        ),
        webService.uploadImage(
          dbName: dbName,
          image: MultipartFile.fromBytes(bytes, filename: fileName),
        ),
      ]);

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<AnalysisResult> finishAnalysis({
    required String dbName,
    required int lastIndex,
  }) async {
    final response = await aiService.uploadFinish(
      dbName: dbName,
      rowCount: lastIndex.toString(),
      finish: "true",
    );

    return response.toDomain(lastIndex);
  }

  @override
  Future<bool> deleteImageFromServer({
    required String dbName,
    required String fileName,
  }) async {
    try {
      final multipartFileName = MultipartFile.fromBytes([], filename: fileName);

      await Future.wait([
        aiService.uploadDeleteImage(
          dbName: dbName,
          fileName: multipartFileName,
        ),
        webService.uploadWebDeleteImage(
          request: DeleteImageRequest(dbName: dbName, deleteImage: fileName),
        ),
      ]);

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> saveAnalyzedId(
    List<({String id, String fileName})> images,
  ) async {
    final entities = images.map((image) {
      return AnalyzedImagesCompanion.insert(
        imageId: image.id,
        fileName: image.fileName,
      );
    }).toList();

    await analyzedImageDao.insertAllAnalyzedImages(entities);
  }

  @override
  Future<void> deleteAnalyzedId({required String id}) async {
    await analyzedImageDao.deleteById(id);
  }

  @override
  Future<int> getLastAnalyzedPersonIndex() async {
    return analysisMetadataStorage.getLastPersonIndex();
  }

  @override
  Future<void> setLastAnalyzedPersonIndex({required int index}) async {
    await analysisMetadataStorage.setLastPersonIndex(index);
  }
}
