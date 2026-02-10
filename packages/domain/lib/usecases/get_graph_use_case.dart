import 'package:domain/entities/gallery_image.dart';
import 'package:domain/repositories/gallery_repository.dart';
import 'package:domain/repositories/graph_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetGraphUseCase {
  final GraphRepository graphRepository;
  final GalleryRepository galleryRepository;

  GetGraphUseCase({
    required this.graphRepository,
    required this.galleryRepository,
  });

  Future<String> getFullGraphData() => graphRepository.getFullGraphWebViewUrl();

  Future<String> getDetailGraphData(String entity) =>
      graphRepository.getDetailGraphWebViewUrl(entityName: entity);

  Future<GalleryImage?> findMatchedImage(String photoName) async {
    final results = await galleryRepository.findMatchedUris([photoName]);

    return results.isNotEmpty ? results.first : null;
  }
}
