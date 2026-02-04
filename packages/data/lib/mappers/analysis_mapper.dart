import 'dart:convert';

import 'package:data/models/response/analysis_response.dart';
import 'package:domain/entities/analysis_result.dart';

extension AnalysisResponseMapper on AnalysisResponse {
  AnalysisResult toDomain(int lastIndex) {
    final newMax = images
        .map((e) {
          final imageName = e.imageName ?? '';
          final digits = imageName.replaceAll(RegExp(r'[^0-9]'), '');
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
      systemName: imageName ?? "unknown",
      imageBytes: (imageBytes != null && imageBytes!.isNotEmpty)
          ? base64Decode(imageBytes!)
          : null,
      isFaceExit: isFaceExit,
    );
  }
}
