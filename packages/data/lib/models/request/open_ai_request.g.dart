// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_ai_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenAIRequest _$OpenAIRequestFromJson(Map<String, dynamic> json) =>
    OpenAIRequest(
      model: json['model'] as String? ?? 'gpt-3.5-turbo',
      messages: (json['messages'] as List<dynamic>)
          .map((e) => OpenAIMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpenAIRequestToJson(OpenAIRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
    };

OpenAIMessage _$OpenAIMessageFromJson(Map<String, dynamic> json) =>
    OpenAIMessage(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$OpenAIMessageToJson(OpenAIMessage instance) =>
    <String, dynamic>{'role': instance.role, 'content': instance.content};
