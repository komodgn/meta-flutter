import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_entity_response.freezed.dart';
part 'delete_entity_response.g.dart';

@freezed
abstract class DeleteEntityResponse with _$DeleteEntityResponse {
  const factory DeleteEntityResponse({required String message}) =
      _DeleteEntityResponse;

  factory DeleteEntityResponse.fromJson(Map<String, Object?> json) =>
      _$DeleteEntityResponseFromJson(json);

  Map<String, dynamic> toJson();
}
