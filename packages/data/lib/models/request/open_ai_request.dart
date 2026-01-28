import 'package:json_annotation/json_annotation.dart';

part 'open_ai_request.g.dart';

@JsonSerializable(explicitToJson: true)
class OpenAIRequest {
  final String model;
  final List<OpenAIMessage> messages;

  OpenAIRequest({this.model = 'gpt-3.5-turbo', required this.messages});

  factory OpenAIRequest.fromJson(Map<String, dynamic> json) =>
      _$OpenAIRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OpenAIRequestToJson(this);
}

@JsonSerializable()
class OpenAIMessage {
  final String role;
  final String content;

  OpenAIMessage({required this.role, required this.content});

  factory OpenAIMessage.fromJson(Map<String, dynamic> json) =>
      _$OpenAIMessageFromJson(json);

  Map<String, dynamic> toJson() => _$OpenAIMessageToJson(this);
}
