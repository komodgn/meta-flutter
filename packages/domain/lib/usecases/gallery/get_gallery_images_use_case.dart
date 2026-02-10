import 'package:domain/entities/gallery_image.dart';
import 'package:domain/repositories/gallery_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetGalleryImagesUseCase {
  final GalleryRepository repository;

  GetGalleryImagesUseCase(this.repository);

  Future<List<GalleryImage>> execute() async {
    return await repository.getAllGalleryImages();
  }
}
