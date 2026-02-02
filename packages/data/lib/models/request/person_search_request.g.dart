// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersonSearchRequest _$PersonSearchRequestFromJson(Map<String, dynamic> json) =>
    _PersonSearchRequest(
      dbName: json['dbName'] as String,
      personName: json['personName'] as String,
    );

Map<String, dynamic> _$PersonSearchRequestToJson(
  _PersonSearchRequest instance,
) => <String, dynamic>{
  'dbName': instance.dbName,
  'personName': instance.personName,
};
