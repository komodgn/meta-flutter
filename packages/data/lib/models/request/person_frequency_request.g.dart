// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_frequency_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersonFrequencyRequest _$PersonFrequencyRequestFromJson(
  Map<String, dynamic> json,
) => _PersonFrequencyRequest(
  dbName: json['dbName'] as String,
  personNames: (json['personNames'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$PersonFrequencyRequestToJson(
  _PersonFrequencyRequest instance,
) => <String, dynamic>{
  'dbName': instance.dbName,
  'personNames': instance.personNames,
};
