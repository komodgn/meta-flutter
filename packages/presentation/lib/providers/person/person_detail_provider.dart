import 'package:domain/entities/gallery_image.dart';
import 'package:domain/entities/person.dart';
import 'package:domain/usecases/get_person_photos_use_case.dart';
import 'package:domain/usecases/person/toggle_home_display_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/providers/base_provider.dart';

@injectable
class PersonDetailProvider extends BaseProvider {
  final GetPersonPhotosUseCase getPersonPhotosUseCase;
  final ToggleHomeDisplayUseCase toggleHomeDisplayUseCase;

  PersonDetailProvider({
    required this.getPersonPhotosUseCase,
    required this.toggleHomeDisplayUseCase,
  });

  List<GalleryImage> _personPhotos = [];
  bool _isLoading = false;

  List<GalleryImage> get personPhotos => _personPhotos;
  bool get isLoading => _isLoading;

  Future<void> loadPersonPhotos(String personName) async {
    _isLoading = true;
    notifyListeners();

    try {
      _personPhotos = await getPersonPhotosUseCase.execute(personName);
    } catch (e) {
      _personPhotos = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> toggleHomeDisplay(Person person) async {
    await toggleHomeDisplayUseCase.execute(person);
  }
}
