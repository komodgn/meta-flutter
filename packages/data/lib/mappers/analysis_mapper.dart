import 'dart:convert';

import 'package:data/models/response/analysis_response.dart';
import 'package:domain/entities/analysis_result.dart';

extension AnalysisResponseMapper on AnalysisResponse {
  AnalysisResult toDomain(int lastIndex) {
    final newMax = images
        .map((e) {
          final digits = e.imageName.replaceAll(RegExp(r'[^0-9]'), '');
          return int.tryParse(digits) ?? lastIndex;
        })
        .fold(lastIndex, (prev, curr) => curr > prev ? curr : prev);

    return AnalysisResult(
      newMaxIndex: newMax,
      persons: images.map((e) => e.toDomain()).toList(),
    );
  }
}

extension PersonAnalysisResultMapper on PersonAnalysisResult {
  PersonAnalysisEntity toDomain() {
    return PersonAnalysisEntity(
      systemName: imageName,
      imageBytes: base64Decode(imageBytes),
      isFaceExit: isFaceExit,
    );
  }
}
