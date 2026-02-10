import 'dart:io';

import 'package:domain/entities/circle.dart';
import 'package:domain/entities/search_result.dart';
import 'package:domain/usecases/search/get_search_use_case.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:presentation/providers/base_provider.dart';

@injectable
class DragSearchProvider extends BaseProvider {
  final GetSearchUseCase getSearchUseCase;

  DragSearchProvider({required this.getSearchUseCase});

  SearchResult? _result;
  SearchResult? get result => _result;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchDragResult({
    required File imageFile,
    required List<Circle> circles,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      _result = await getSearchUseCase.performDragSearch(
        imageFile: imageFile,
        circles: circles,
      );
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
