import 'package:domain/repositories/gallery_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:photo_manager/photo_manager.dart';

@injectable
class UpdatePhotoPermissionUseCase {
  final GalleryRepository galleryRepository;

  UpdatePhotoPermissionUseCase({required this.galleryRepository});

  Future<void> execute() async {
    final ps = await PhotoManager.requestPermissionExtend();

    if (ps.isLimited) {
      await PhotoManager.presentLimited();
    } else if (ps == PermissionState.denied) {
      await PhotoManager.openSetting();
    }
  }
}
