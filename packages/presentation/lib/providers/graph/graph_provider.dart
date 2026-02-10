import 'package:domain/entities/gallery_image.dart';
import 'package:domain/usecases/graph/get_graph_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/providers/base_provider.dart';

@injectable
class GraphProvider extends BaseProvider {
  final GetGraphUseCase getGraphUseCase;

  GraphProvider({required this.getGraphUseCase});

  String _url = "";
  String get url => _url;

  List<GalleryImage> _selectedImages = [];
  List<GalleryImage> get selectedImages => _selectedImages;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future<void> initGraph() async {
    _isLoading = true;
    notifyListeners();

    _url = await getGraphUseCase.getFullGraphData();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> onPhotoSelected(String photoName) async {
    final image = await getGraphUseCase.findMatchedImage(photoName);
    if (image != null) {
      if (!_selectedImages.any((e) => e.id == image.id)) {
        _selectedImages = [image, ..._selectedImages].take(10).toList();
        notifyListeners();
      }
    }
  }
}
