import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_entity_request.freezed.dart';
part 'delete_entity_request.g.dart';

@freezed
abstract class DeleteEntityRequest with _$DeleteEntityRequest {
  const factory DeleteEntityRequest({
    required String dbName,
    required String entityName,
  }) = _DeleteEntityRequest;

  factory DeleteEntityRequest.fromJson(Map<String, Object?> json) =>
      _$DeleteEntityRequestFromJson(json);

  Map<String, dynamic> toJson();
}
