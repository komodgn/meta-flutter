import 'package:dio/dio.dart';
import 'package:data/models/request/open_ai_request.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:data/models/response/open_ai_response.dart';

part 'open_ai_service.g.dart';

@RestApi(baseUrl: "https://api.openai.com/")
abstract class OpenAIService {
  factory OpenAIService(Dio dio, {String baseUrl}) = _OpenAIService;

  @POST("v1/chat/completions")
  Future<OpenAIResponse> createChatCompletion({
    @Body() required OpenAIRequest request,
  });
}
