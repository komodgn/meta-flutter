import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_name_request.freezed.dart';
part 'change_name_request.g.dart';

@freezed
abstract class ChangeNameRequest with _$ChangeNameRequest {
  const factory ChangeNameRequest({
    required String dbName,
    required String oldName,
    required String newName,
  }) = _ChangeNameRequest;

  factory ChangeNameRequest.fromJson(Map<String, Object?> json) =>
      _$ChangeNameRequestFromJson(json);

  Map<String, dynamic> toJson();
}
