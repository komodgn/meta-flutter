import 'package:domain/entities/gallery_image.dart';
import 'package:domain/usecases/get_search_use_case.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class NlSearchProvider extends ChangeNotifier {
  final GetSearchUseCase getSearchUseCase;

  NlSearchProvider({required this.getSearchUseCase});

  List<GalleryImage> _searchResults = [];
  List<GalleryImage> get searchResults => _searchResults;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchNLSearchResult({required String query}) async {
    if (query.isEmpty) return;

    _isLoading = true;
    notifyListeners();

    try {
      _searchResults = await getSearchUseCase.performNLSearch(query);
    } catch (e) {
      debugPrint("NLSearch Error: $e");
      _searchResults = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
