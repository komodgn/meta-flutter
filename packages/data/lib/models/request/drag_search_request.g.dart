// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drag_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DragSearchRequest _$DragSearchRequestFromJson(Map<String, dynamic> json) =>
    _DragSearchRequest(
      circles: (json['circles'] as List<dynamic>)
          .map((e) => CircleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DragSearchRequestToJson(_DragSearchRequest instance) =>
    <String, dynamic>{'circles': instance.circles};

_CircleDto _$CircleDtoFromJson(Map<String, dynamic> json) => _CircleDto(
  centerX: (json['centerX'] as num).toDouble(),
  centerY: (json['centerY'] as num).toDouble(),
  radius: (json['radius'] as num).toDouble(),
);

Map<String, dynamic> _$CircleDtoToJson(_CircleDto instance) =>
    <String, dynamic>{
      'centerX': instance.centerX,
      'centerY': instance.centerY,
      'radius': instance.radius,
    };
