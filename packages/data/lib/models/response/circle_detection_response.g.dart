// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_detection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CircleDetectionResponse _$CircleDetectionResponseFromJson(
  Map<String, dynamic> json,
) => CircleDetectionResponse(
  message: json['message'] as String,
  detectedObjects: (json['detected_objects'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$CircleDetectionResponseToJson(
  CircleDetectionResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'detected_objects': instance.detectedObjects,
};
