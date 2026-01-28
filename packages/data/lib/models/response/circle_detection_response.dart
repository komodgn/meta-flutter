import 'package:json_annotation/json_annotation.dart';

part 'circle_detection_response.g.dart';

@JsonSerializable()
class CircleDetectionResponse {
  final String message;

  @JsonKey(name: 'detected_objects')
  final List<String> detectedObjects;

  CircleDetectionResponse({
    required this.message,
    required this.detectedObjects,
  });

  factory CircleDetectionResponse.fromJson(Map<String, dynamic> json) =>
      _$CircleDetectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CircleDetectionResponseToJson(this);
}
