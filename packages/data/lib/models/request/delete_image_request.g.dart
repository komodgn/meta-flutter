// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_image_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteImageRequest _$DeleteImageRequestFromJson(Map<String, dynamic> json) =>
    _DeleteImageRequest(
      dbName: json['dbName'] as String,
      deleteImage: json['deleteImage'] as String,
    );

Map<String, dynamic> _$DeleteImageRequestToJson(_DeleteImageRequest instance) =>
    <String, dynamic>{
      'dbName': instance.dbName,
      'deleteImage': instance.deleteImage,
    };
