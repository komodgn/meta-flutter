import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_image_request.freezed.dart';
part 'delete_image_request.g.dart';

@freezed
abstract class DeleteImageRequest with _$DeleteImageRequest {
  const factory DeleteImageRequest({
    required String dbName,
    required String deleteImage,
  }) = _DeleteImageRequest;

  factory DeleteImageRequest.fromJson(Map<String, Object?> json) =>
      _$DeleteImageRequestFromJson(json);

  Map<String, dynamic> toJson();
}
