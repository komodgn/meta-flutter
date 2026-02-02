import 'package:data/models/request/change_name_request.dart';
import 'package:data/models/request/delete_entity_request.dart';
import 'package:data/models/request/delete_image_request.dart';
import 'package:data/models/request/person_frequency_request.dart';
import 'package:data/models/request/person_search_request.dart';
import 'package:data/models/response/change_name_response.dart';
import 'package:data/models/response/delete_entity_response.dart';
import 'package:data/models/response/person_frequency_response.dart';
import 'package:data/models/response/triple_response.dart';
import 'package:dio/dio.dart';
import 'package:data/models/request/detected_objects_request.dart';
import 'package:data/models/request/nl_search_request.dart';
import 'package:data/models/response/drag_search_response.dart';
import 'package:data/models/response/nl_search_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'web_service.g.dart';

@RestApi()
abstract class WebService {
  factory WebService(Dio dio, {String baseUrl}) = _WebService;

  @POST("android/circleToSearch")
  @MultiPart()
  Future<DragSearchResponse> sendDetectedObjects({
    @Body() required DetectedObjectsRequest request,
  });

  @POST("nlqsearch")
  Future<NLSearchResponse> sendCypherQuery({
    @Body() required NlSearchRequest request,
  });

  @POST("personsearch")
  Future<List<String>> sendPersonData({
    @Body() required PersonSearchRequest request,
  });

  @POST("changename")
  Future<ChangeNameResponse> changePersonName({
    @Body() required ChangeNameRequest request,
  });

  @POST("api/peoplefrequency")
  Future<PersonFrequencyResponse> getPersonFrequency({
    @Body() required PersonFrequencyRequest request,
  });

  @GET("api/photoTripleData/{dbName}/{photoName}")
  Future<TripleResponse> fetchTripleData({
    @Path("dbName") required String dbName,
    @Path("photoName") required String photoName,
  });

  @POST("neo4j/deleteEntity/")
  Future<DeleteEntityResponse> deleteEntity({
    @Body() required DeleteEntityRequest request,
  });

  @POST("android/uploadimg")
  @MultiPart()
  Future<void> uploadImage({
    @Query("dbName") required String dbName,
    @Part(name: "image") required MultipartFile image,
  });

  @POST("deleteImage/")
  Future<void> uploadWebDeleteImage({
    @Body() required DeleteImageRequest request,
  });
}
