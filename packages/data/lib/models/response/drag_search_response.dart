import 'package:domain/entities/search_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drag_search_response.g.dart';

@JsonSerializable(explicitToJson: true)
class DragSearchResponse {
  final Photos photos;

  DragSearchResponse({required this.photos});

  factory DragSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$DragSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DragSearchResponseToJson(this);

  SearchResult toEntity() {
    final commonList = photos.commonPhotos.toSet().toList();
    final individualMap = photos.individualPhotos;
    final List<PhotoGroup> resultGroups = [];

    if (commonList.isNotEmpty) {
      final relatedCategories = individualMap.entries
          .where(
            (entry) => entry.value.any((photo) => commonList.contains(photo)),
          )
          .map((entry) => entry.key)
          .join(", ");

      resultGroups.add(
        PhotoGroup(categoryName: relatedCategories, photoNames: commonList),
      );
    }

    individualMap.forEach((category, photoNames) {
      final filteredNames = photoNames
          .where((name) => !commonList.contains(name))
          .toList();

      if (filteredNames.isNotEmpty) {
        resultGroups.add(
          PhotoGroup(categoryName: category, photoNames: filteredNames),
        );
      }
    });

    return SearchResult(groups: resultGroups);
  }
}

@JsonSerializable()
class Photos {
  final List<String> commonPhotos;
  final Map<String, List<String>> individualPhotos;

  Photos({required this.commonPhotos, required this.individualPhotos});

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);

  Map<String, dynamic> toJson() => _$PhotosToJson(this);
}
