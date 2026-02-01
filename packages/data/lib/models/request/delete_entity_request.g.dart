// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_entity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteEntityRequest _$DeleteEntityRequestFromJson(Map<String, dynamic> json) =>
    _DeleteEntityRequest(
      dbName: json['dbName'] as String,
      entityName: json['entityName'] as String,
    );

Map<String, dynamic> _$DeleteEntityRequestToJson(
  _DeleteEntityRequest instance,
) => <String, dynamic>{
  'dbName': instance.dbName,
  'entityName': instance.entityName,
};
