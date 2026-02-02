import 'package:data/services/ai_service.dart';
import 'package:data/services/open_ai_service.dart';
import 'package:data/services/web_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceModule {
  @lazySingleton
  Dio get dio {
    final dio = Dio();

    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );

    dio.options.connectTimeout = const Duration(seconds: 1000);
    dio.options.receiveTimeout = const Duration(seconds: 1000);

    return dio;
  }

  @lazySingleton
  AIService aiService(Dio dio) {
    final baseUrl =
        dotenv.env['AI_SERVER_BASE_URL'] ?? "http://localhost:8080/";
    return AIService(dio, baseUrl: baseUrl);
  }

  @lazySingleton
  WebService webService(Dio dio) {
    final baseUrl =
        dotenv.env['WEB_SERVER_BASE_URL'] ?? "http://localhost:8081/";
    return WebService(dio, baseUrl: baseUrl);
  }

  @lazySingleton
  OpenAIService openAIService(Dio dio) => OpenAIService(dio);
}
