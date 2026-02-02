import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'gallery_image.freezed.dart';

@freezed
abstract class GalleryImage with _$GalleryImage {
  const factory GalleryImage({
    required String id,
    required String name,
    AssetEntity? entity,
  }) = _GalleryImage;
}
