// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nl_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NLSearchResponse _$NLSearchResponseFromJson(Map<String, dynamic> json) =>
    NLSearchResponse(
      photoNames: (json['PhotoName'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$NLSearchResponseToJson(NLSearchResponse instance) =>
    <String, dynamic>{'PhotoName': instance.photoNames};
