import 'package:data/models/request/open_ai_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'open_ai_response.g.dart';

@JsonSerializable(explicitToJson: true)
class OpenAIResponse {
  final List<OpenAIChoice> choices;

  OpenAIResponse({required this.choices});

  factory OpenAIResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenAIResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OpenAIResponseToJson(this);
}

@JsonSerializable()
class OpenAIChoice {
  final OpenAIMessage message;

  OpenAIChoice({required this.message});

  factory OpenAIChoice.fromJson(Map<String, dynamic> json) =>
      _$OpenAIChoiceFromJson(json);

  Map<String, dynamic> toJson() => _$OpenAIChoiceToJson(this);
}
