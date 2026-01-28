class SearchResult {
  final List<PhotoGroup> groups;

  SearchResult({required this.groups});
}

class PhotoGroup {
  final String categoryName;
  final List<String> photoNames;

  PhotoGroup({required this.categoryName, required this.photoNames});

  PhotoGroup copyWith({String? categoryName, List<String>? photoNames}) {
    return PhotoGroup(
      categoryName: categoryName ?? this.categoryName,
      photoNames: photoNames ?? this.photoNames,
    );
  }
}

class NLSearchResult {
  final List<String> matchedUris;

  NLSearchResult({required this.matchedUris});
}
