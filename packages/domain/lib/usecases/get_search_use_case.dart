import 'dart:io';

import 'package:domain/constants/prompt_constans.dart';
import 'package:domain/entities/circle.dart';
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
      imageFile: imageFile,
      dbName: dbName,
      circles: circles,
    );

    final mappedNames = await Future.wait(
      systemNames.map((name) async {
        final inputName = await _personRepository.getInputNameBySystemName(
          name,
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

    final updatedGroups = await Future.wait(
      rawResult.groups.map((group) async {
        final uris = await _galleryRepository.findMatchedUris(group.photoNames);
        return group.copyWith(
          photoNames: uris.map((e) => e.toString()).toList(),
        );
      }),
    );

    return SearchResult(
      groups: updatedGroups.where((g) => g.photoNames.isNotEmpty).toList(),
    );
  }

  Future<NLSearchResult> performNLSearch(String query) async {
    final dbName = await _neo4jRepository.getDatabaseName();

    final keywords = await _searchRepository.extractKeywords(
      PromptConstants.nlSearchBasicPrompt + query,
    );

    if (keywords.isEmpty) return NLSearchResult(matchedUris: []);

    final cypher = CypherQueryGenerator.generateQueryByKeywords(keywords);

    final photoNames = await _searchRepository.fetchPhotoNamesByQuery(
      dbName: dbName,
      query: cypher,
    );

    final uris = await _galleryRepository.findMatchedUris(photoNames);

    return NLSearchResult(matchedUris: uris.map((e) => e.toString()).toList());
  }
}
