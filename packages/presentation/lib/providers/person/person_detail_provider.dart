import 'package:domain/entities/gallery_image.dart';
import 'package:domain/usecases/get_person_photos_use_case.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class PersonDetailProvider extends ChangeNotifier {
  final GetPersonPhotosUseCase getPersonPhotosUseCase;

  PersonDetailProvider({required this.getPersonPhotosUseCase});

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
}
