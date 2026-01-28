// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nl_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NlSearchRequest _$NlSearchRequestFromJson(Map<String, dynamic> json) =>
    NlSearchRequest(
      dbName: json['dbName'] as String,
      query: json['query'] as String,
    );

Map<String, dynamic> _$NlSearchRequestToJson(NlSearchRequest instance) =>
    <String, dynamic>{'dbName': instance.dbName, 'query': instance.query};
