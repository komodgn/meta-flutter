import 'package:domain/entities/gallery_image.dart';
import 'package:domain/usecases/gallery/get_gallery_images_use_case.dart';
import 'package:domain/usecases/gallery/update_photo_permission_use_case.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:presentation/providers/base_provider.dart';

@injectable
class GalleryProvider extends BaseProvider {
  final GetGalleryImagesUseCase getGalleryImagesUseCase;
  final UpdatePhotoPermissionUseCase updatePhotoPermissionUseCase;

  GalleryProvider({
    required this.getGalleryImagesUseCase,
    required this.updatePhotoPermissionUseCase,
  });

  List<GalleryImage> _images = [];
  List<GalleryImage> get images => _images;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchImages() async {
    final PermissionState ps = await PhotoManager.requestPermissionExtend();
    if (ps.isAuth || ps.hasAccess) {
      _isLoading = true;
      notifyListeners();

      try {
        _images = await getGalleryImagesUseCase.execute();
      } catch (e) {
        debugPrint("Gallery Images Load Failed: $e");
      } finally {
        _isLoading = false;
        notifyListeners();
      }
    } else {}
  }

  Future<void> handleEditSelected() async {
    await updatePhotoPermissionUseCase.execute();
    await fetchImages();
  }
}
