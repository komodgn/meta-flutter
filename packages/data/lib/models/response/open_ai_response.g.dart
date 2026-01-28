// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_ai_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIResponse _$OpenAIResponseFromJson(Map<String, dynamic> json) =>
    OpenAIResponse(
      choices: (json['choices'] as List<dynamic>)
          .map((e) => OpenAIChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpenAIResponseToJson(OpenAIResponse instance) =>
    <String, dynamic>{
      'choices': instance.choices.map((e) => e.toJson()).toList(),
    };

OpenAIChoice _$OpenAIChoiceFromJson(Map<String, dynamic> json) => OpenAIChoice(
  message: OpenAIMessage.fromJson(json['message'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OpenAIChoiceToJson(OpenAIChoice instance) =>
    <String, dynamic>{'message': instance.message};
