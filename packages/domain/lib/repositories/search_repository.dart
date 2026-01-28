import 'dart:io';

import 'package:domain/entities/circle.dart';
import 'package:domain/entities/search_result.dart';

abstract class SearchRepository {
  Future<List<String>> getDetectedObjectNames({
    required File imageFile,
    required String dbName,
    required List<Circle> circles,
  });

  Future<SearchResult> getDetectedGroups({
    required String dbName,
    required List<String> properties,
  });

  Future<List<String>> extractKeywords(String prompt);

  Future<List<String>> fetchPhotoNamesByQuery({
    required String dbName,
    required String query,
  });
}
