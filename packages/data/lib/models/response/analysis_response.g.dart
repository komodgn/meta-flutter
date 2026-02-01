// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalysisResponse _$AnalysisResponseFromJson(Map<String, dynamic> json) =>
    _AnalysisResponse(
      images: (json['images'] as List<dynamic>)
          .map((e) => PersonAnalysisResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnalysisResponseToJson(_AnalysisResponse instance) =>
    <String, dynamic>{'images': instance.images};

_PersonAnalysisResult _$PersonAnalysisResultFromJson(
  Map<String, dynamic> json,
) => _PersonAnalysisResult(
  imageName: json['imageName'] as String,
  imageBytes: json['imageBytes'] as String,
  isFaceExit: json['isFaceExit'] as bool,
);

Map<String, dynamic> _$PersonAnalysisResultToJson(
  _PersonAnalysisResult instance,
) => <String, dynamic>{
  'imageName': instance.imageName,
  'imageBytes': instance.imageBytes,
  'isFaceExit': instance.isFaceExit,
};
