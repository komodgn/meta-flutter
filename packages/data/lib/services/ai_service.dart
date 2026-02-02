import 'dart:convert';

import 'package:data/models/response/analysis_response.dart';
import 'package:data/models/response/circle_detection_response.dart';
import 'package:data/models/response/common_response.dart';
import 'package:dio/dio.dart';
import 'package:data/models/request/drag_search_request.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'ai_service.g.dart';

@RestApi()
abstract class AIService {
  factory AIService(Dio dio, {String baseUrl}) = _AIService;

  @POST("android/circle_search")
  @MultiPart()
  Future<CircleDetectionResponse> uploadImageAndCircles({
    @Part(name: "searchImage") required MultipartFile image,
    @Part(name: "dbName") required String dbName,
    @Part(name: "circles") required DragSearchRequest request,
  });

  @POST("android/delete_person")
  @MultiPart()
  Future<void> deletePerson({
    @Part(name: "dbName") required String dbName,
    @Part(name: "deletePerson") required String deletePerson,
  });

  @POST("android/upload_add")
  @MultiPart()
  Future<CommonResponse> uploadImage({
    @Part(name: "dbName") required String dbName,
    @Part(name: "addImage") required MultipartFile image,
  });

  @POST("android/upload_delete")
  @MultiPart()
  Future<CommonResponse> uploadDeleteImage({
    @Part(name: "dbName") required String dbName,
    @Part(name: "deleteImage") required MultipartFile fileName,
  });

  @POST("android/upload_database")
  @MultiPart()
  Future<void> uploadDatabaseImage({
    @Part(name: "dbName") required String dbName,
    @Part(name: "fileName") required MultipartFile fileName,
  });

  @POST("android/upload_first")
  @MultiPart()
  Future<void> uploadFirst({
    @Part(name: "dbName") required String dbName,
    @Part(name: "first") required String first,
  });

  @POST("android/upload_finish")
  @MultiPart()
  Future<AnalysisResponse> uploadFinish({
    @Part(name: "dbName") required String dbName,
    @Part(name: "finish") String? finish,
    @Part(name: "rowCount") required String rowCount,
  });
}
