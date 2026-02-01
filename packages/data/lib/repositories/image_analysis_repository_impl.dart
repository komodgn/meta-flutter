import 'dart:io';
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
  Future<List<String>> getAlreadyAnalyzedPaths() async {
    return await analyzedImageDao.getAllAnalyzedPaths();
  }

  @override
  Future<String?> getFileNameByPath({required String path}) async {
    return await analyzedImageDao.getFileNameByPath(path);
  }

  @override
  Future<bool> uploadSingleImage({
    required String dbName,
    required String path,
    required String fileName,
  }) async {
    try {
      final file = File(path);
      final multipartFile = await MultipartFile.fromFile(
        file.path,
        filename: fileName,
      );

      await aiService.uploadAddImage(dbName: dbName, fileName: multipartFile);
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

      await aiService.uploadDeleteImage(
        dbName: dbName,
        fileName: multipartFileName,
      );
      await webService.uploadWebDeleteImage(
        request: DeleteImageRequest(dbName: dbName, deleteImage: fileName),
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> saveAnalyzedPath(
    List<({String path, String fileName})> images,
  ) async {
    final entities = images.map((image) {
      return AnalyzedImagesCompanion.insert(
        imagePath: image.path,
        fileName: image.fileName,
      );
    }).toList();

    await analyzedImageDao.insertAllPaths(entities);
  }

  @override
  Future<void> deleteAnalyzedPath({required String path}) async {
    await analyzedImageDao.deletePath(path);
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
