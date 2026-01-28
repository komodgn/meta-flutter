// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detected_objects_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetectedObjectsRequest _$DetectedObjectsRequestFromJson(
  Map<String, dynamic> json,
) => _DetectedObjectsRequest(
  dbName: json['dbName'] as String,
  properties: (json['properties'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$DetectedObjectsRequestToJson(
  _DetectedObjectsRequest instance,
) => <String, dynamic>{
  'dbName': instance.dbName,
  'properties': instance.properties,
};
