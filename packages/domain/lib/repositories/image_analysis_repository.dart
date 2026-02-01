import 'package:domain/entities/analysis_result.dart';

abstract class ImageAnalysisRepository {
  Future<String?> getFileNameByPath({required String path});

  Future<int> getLastAnalyzedPersonIndex();

  Future<void> setLastAnalyzedPersonIndex({required int index});

  Future<bool> deleteImageFromServer({
    required String dbName,
    required String fileName,
  });

  Future<void> deleteAnalyzedPath({required String path});

  Future<List<String>> getAlreadyAnalyzedPaths();

  Future<bool> uploadSingleImage({
    required String dbName,
    required String path,
    required String fileName,
  });

  Future<void> saveAnalyzedPath(List<({String path, String fileName})> images);

  Future<AnalysisResult> finishAnalysis({
    required String dbName,
    required int lastIndex,
  });
}
