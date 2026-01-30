import 'package:data/models/response/drag_search_response.dart';
import 'package:domain/entities/search_result.dart';

extension DragSearchResponseMapper on DragSearchResponse {
  SearchResult toDomain() {
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
