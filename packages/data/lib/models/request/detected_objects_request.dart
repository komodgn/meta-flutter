import 'package:freezed_annotation/freezed_annotation.dart';

part 'detected_objects_request.freezed.dart';
part 'detected_objects_request.g.dart';

@freezed
abstract class DetectedObjectsRequest with _$DetectedObjectsRequest {
  const factory DetectedObjectsRequest({
    required String dbName,
    required List<String> properties,
  }) = _DetectedObjectsRequest;

  factory DetectedObjectsRequest.fromJson(Map<String, Object?> json) =>
      _$DetectedObjectsRequestFromJson(json);
}
