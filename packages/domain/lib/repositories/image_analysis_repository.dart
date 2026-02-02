import 'dart:typed_data';

import 'package:domain/entities/analysis_result.dart';

abstract class ImageAnalysisRepository {
  Future<String?> getFileNameById({required String id});

  Future<int> getLastAnalyzedPersonIndex();

  Future<void> setLastAnalyzedPersonIndex({required int index});

  Future<bool> deleteImageFromServer({
    required String dbName,
    required String fileName,
  });

  Future<void> deleteAnalyzedId({required String id});

  Future<List<String>> getAlreadyAnalyzedIds();

  Future<bool> uploadSingleImage({
    required String dbName,
    required Uint8List bytes,
    required String fileName,
  });

  Future<void> saveAnalyzedId(List<({String id, String fileName})> images);

  Future<AnalysisResult> finishAnalysis({
    required String dbName,
    required int lastIndex,
  });
}
