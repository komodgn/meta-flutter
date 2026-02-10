import 'dart:io';

import 'package:domain/constants/prompt_constans.dart';
import 'package:domain/entities/circle.dart';
import 'package:domain/entities/gallery_image.dart';
import 'package:domain/entities/search_result.dart';
import 'package:domain/repositories/gallery_repository.dart';
import 'package:domain/repositories/neo4j_repository.dart';
import 'package:domain/repositories/person_repository.dart';
import 'package:domain/utils/cypher_query_generator.dart';
import 'package:injectable/injectable.dart';

import '../repositories/search_repository.dart';

@injectable
class GetSearchUseCase {
  final SearchRepository _searchRepository;
  final PersonRepository _personRepository;
  final GalleryRepository _galleryRepository;
  final Neo4jRepository _neo4jRepository;

  GetSearchUseCase(
    this._searchRepository,
    this._personRepository,
    this._galleryRepository,
    this._neo4jRepository,
  );

  Future<SearchResult> performDragSearch({
    required File imageFile,
    required List<Circle> circles,
  }) async {
    final dbName = await _neo4jRepository.getDatabaseName();

    final systemNames = await _searchRepository.getDetectedObjectNames(
      dbName: dbName,
      imageFile: imageFile,
      circles: circles,
    );

    final mappedNames = await Future.wait(
      systemNames.map((name) async {
        final inputName = await _personRepository.getInputNameBySystemName(
          systemName: name,
        );
        return (inputName != null && inputName.isNotEmpty) ? inputName : name;
      }),
    );

    final properties = mappedNames
        .where((e) => e.trim().isNotEmpty)
        .toSet()
        .toList();
    if (properties.isEmpty) return SearchResult(groups: []);

    final rawResult = await _searchRepository.getDetectedGroups(
      dbName: dbName,
      properties: properties,
    );

    final List<PhotoGroup> updatedGroups = await Future.wait(
      rawResult.groups.map((group) async {
        final List<GalleryImage> galleryImages = await _galleryRepository
            .findMatchedUris(group.photoNames);
        return group.copyWith(images: galleryImages);
      }),
    );

    return SearchResult(
      groups: updatedGroups.where((g) => g.images.isNotEmpty).toList(),
    );
  }

  Future<List<GalleryImage>> performNLSearch(String query) async {
    final dbName = await _neo4jRepository.getDatabaseName();

    final keywords = await _searchRepository.extractKeywords(
      PromptConstants.nlSearchBasicPrompt + query,
    );

    if (keywords.isEmpty) return [];

    final cypher = CypherQueryGenerator.generateQueryByKeywords(keywords);

    final photoNames = await _searchRepository.fetchPhotoNamesByQuery(
      dbName: dbName,
      query: cypher,
    );

    return await _galleryRepository.findMatchedUris(photoNames);
  }
}
