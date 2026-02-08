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

    dio.options.headers = {'Connection': 'keep-alive'};

    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: false,
        error: true,
      ),
    );

    dio.options.connectTimeout = const Duration(minutes: 100);
    dio.options.receiveTimeout = const Duration(minutes: 100);

    return dio;
  }

  @Named("openAIDio")
  @lazySingleton
  Dio openAIDio(Dio commonDio) {
    final openAIDio = Dio(commonDio.options);

    openAIDio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final apiKey = dotenv.env['OPENAI_API_KEY'];
          options.headers['Authorization'] = 'Bearer $apiKey';
          options.headers['Content-Type'] = 'application/json';
          return handler.next(options);
        },
      ),
    );

    openAIDio.interceptors.add(
      LogInterceptor(requestBody: true, responseBody: true),
    );

    return openAIDio;
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
  OpenAIService openAIService(@Named("openAIDio") Dio dio) =>
      OpenAIService(dio);
}
