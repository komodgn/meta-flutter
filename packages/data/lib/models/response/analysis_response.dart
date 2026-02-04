import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysis_response.freezed.dart';
part 'analysis_response.g.dart';

@freezed
abstract class AnalysisResponse with _$AnalysisResponse {
  const factory AnalysisResponse({required List<PersonAnalysisResult> images}) =
      _AnalysisResponse;

  factory AnalysisResponse.fromJson(Map<String, dynamic> json) =>
      _$AnalysisResponseFromJson(json);
}

@freezed
abstract class PersonAnalysisResult with _$PersonAnalysisResult {
  const factory PersonAnalysisResult({
    @Default(null) String? imageName,
    @Default(null) String? imageBytes,
    required bool isFaceExit,
  }) = _PersonAnalysisResult;

  factory PersonAnalysisResult.fromJson(Map<String, dynamic> json) =>
      _$PersonAnalysisResultFromJson(json);
}
