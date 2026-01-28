// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drag_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DragSearchRequest _$DragSearchRequestFromJson(Map<String, dynamic> json) =>
    _DragSearchRequest(
      circles: (json['circles'] as List<dynamic>)
          .map((e) => Circle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DragSearchRequestToJson(_DragSearchRequest instance) =>
    <String, dynamic>{'circles': instance.circles};
