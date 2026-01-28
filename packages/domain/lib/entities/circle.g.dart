// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Circle _$CircleFromJson(Map<String, dynamic> json) => _Circle(
  centerX: (json['centerX'] as num).toDouble(),
  centerY: (json['centerY'] as num).toDouble(),
  radius: (json['radius'] as num).toDouble(),
);

Map<String, dynamic> _$CircleToJson(_Circle instance) => <String, dynamic>{
  'centerX': instance.centerX,
  'centerY': instance.centerY,
  'radius': instance.radius,
};
