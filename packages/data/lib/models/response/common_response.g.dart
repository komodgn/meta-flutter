// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommonResponse _$CommonResponseFromJson(Map<String, dynamic> json) =>
    _CommonResponse(
      message: json['message'] as String? ?? null,
      error: json['error'] as String? ?? null,
    );

Map<String, dynamic> _$CommonResponseToJson(_CommonResponse instance) =>
    <String, dynamic>{'message': instance.message, 'error': instance.error};
