// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drag_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DragSearchResponse _$DragSearchResponseFromJson(Map<String, dynamic> json) =>
    DragSearchResponse(
      photos: Photos.fromJson(json['photos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DragSearchResponseToJson(DragSearchResponse instance) =>
    <String, dynamic>{'photos': instance.photos.toJson()};

Photos _$PhotosFromJson(Map<String, dynamic> json) => Photos(
  commonPhotos: (json['commonPhotos'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  individualPhotos: (json['individualPhotos'] as Map<String, dynamic>).map(
    (k, e) =>
        MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
  ),
);

Map<String, dynamic> _$PhotosToJson(Photos instance) => <String, dynamic>{
  'commonPhotos': instance.commonPhotos,
  'individualPhotos': instance.individualPhotos,
};
