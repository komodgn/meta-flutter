import 'dart:typed_data';

import 'package:domain/entities/gallery_image.dart';

abstract class GalleryRepository {
  Future<List<String>> findMatchedUris(List<String> photoNames);
  Future<List<GalleryImage>> getAllGalleryImages();
  Future<Uint8List?> getImageBytesById(String id);
  Future<String?> getFileName({required String id});
}
