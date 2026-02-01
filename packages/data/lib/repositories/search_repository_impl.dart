import 'dart:io';

import 'package:data/mappers/search_mapper.dart';
import 'package:data/models/request/detected_objects_request.dart';
import 'package:data/models/request/nl_search_request.dart';
import 'package:data/models/request/open_ai_request.dart';
import 'package:data/models/response/drag_search_response.dart';
import 'package:data/services/ai_service.dart';
import 'package:data/services/open_ai_service.dart';
import 'package:data/services/web_service.dart';
import 'package:dio/dio.dart';
import 'package:domain/entities/circle.dart';
import 'package:domain/entities/search_result.dart';
import 'package:data/models/request/drag_search_request.dart';
import 'package:domain/repositories/search_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final AIService aiService;
  final WebService webService;
  final OpenAIService openAIService;

  SearchRepositoryImpl(this.aiService, this.webService, this.openAIService);

  @override
  Future<List<String>> getDetectedObjectNames({
    required File imageFile,
    required String dbName,
    required List<Circle> circles,
  }) async {
    final multipartFile = await MultipartFile.fromFile(
      imageFile.path,
      filename: imageFile.path.split('/').last,
    );

    final circleDtos = circles
        .map(
          (c) => CircleDto(
            centerX: c.centerX,
            centerY: c.centerY,
            radius: c.radius,
          ),
        )
        .toList();

    final response = await aiService.uploadImageAndCircles(
      image: multipartFile,
      dbName: dbName,
      request: DragSearchRequest(circles: circleDtos),
    );

    return response.detectedObjects;
  }

  @override
  Future<List<String>> extractKeywords(String prompt) async {
    final response = await openAIService.createChatCompletion(
      request: OpenAIRequest(
        messages: [OpenAIMessage(role: "user", content: prompt)],
      ),
    );

    final content = response.choices.firstOrNull?.message.content.trim() ?? "";

    if (content == "0" || content.isEmpty) return [];

    return content
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
  }

  @override
  Future<SearchResult> getDetectedGroups({
    required String dbName,
    required List<String> properties,
  }) async {
    final DragSearchResponse response = await webService.sendDetectedObjects(
      request: DetectedObjectsRequest(dbName: dbName, properties: properties),
    );

    return response.toDomain();
  }

  @override
  Future<List<String>> fetchPhotoNamesByQuery({
    required String dbName,
    required String query,
  }) async {
    final response = await webService.sendCypherQuery(
      request: NlSearchRequest(dbName: dbName, query: query),
    );

    return response.photoNames;
  }
}
