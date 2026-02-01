// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_name_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangeNameRequest _$ChangeNameRequestFromJson(Map<String, dynamic> json) =>
    _ChangeNameRequest(
      dbName: json['dbName'] as String,
      oldName: json['oldName'] as String,
      newName: json['newName'] as String,
    );

Map<String, dynamic> _$ChangeNameRequestToJson(_ChangeNameRequest instance) =>
    <String, dynamic>{
      'dbName': instance.dbName,
      'oldName': instance.oldName,
      'newName': instance.newName,
    };
