import 'package:freezed_annotation/freezed_annotation.dart';

part 'drag_search_response.freezed.dart';
part 'drag_search_response.g.dart';

@freezed
abstract class DragSearchResponse with _$DragSearchResponse {
  const factory DragSearchResponse({required Photos photos}) =
      _DragSearchResponse;

  factory DragSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$DragSearchResponseFromJson(json);
}

@freezed
abstract class Photos with _$Photos {
  const factory Photos({
    required List<String> commonPhotos,
    required Map<String, List<String>> individualPhotos,
  }) = _Photos;

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}
