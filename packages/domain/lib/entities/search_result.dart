import 'package:domain/entities/gallery_image.dart';

class SearchResult {
  final List<PhotoGroup> groups;

  SearchResult({required this.groups});
}

class PhotoGroup {
  final String categoryName;
  final List<String> photoNames;
  final List<GalleryImage> images;

  PhotoGroup({
    required this.categoryName,
    required this.photoNames,
    this.images = const [],
  });

  PhotoGroup copyWith({List<GalleryImage>? images}) {
    return PhotoGroup(
      categoryName: categoryName,
      photoNames: photoNames,
      images: images ?? this.images,
    );
  }
}

class NLSearchResult {
  final List<String> matchedUris;

  NLSearchResult({required this.matchedUris});
}
