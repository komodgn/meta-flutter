import 'package:json_annotation/json_annotation.dart';

part 'drag_search_response.g.dart';

@JsonSerializable(explicitToJson: true)
class DragSearchResponse {
  final Photos photos;

  DragSearchResponse({required this.photos});

  factory DragSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$DragSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DragSearchResponseToJson(this);
}

@JsonSerializable()
class Photos {
  final List<String> commonPhotos;
  final Map<String, List<String>> individualPhotos;

  Photos({required this.commonPhotos, required this.individualPhotos});

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);

  Map<String, dynamic> toJson() => _$PhotosToJson(this);
}
