import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_name_response.freezed.dart';
part 'change_name_response.g.dart';

@freezed
abstract class ChangeNameResponse with _$ChangeNameResponse {
  const factory ChangeNameResponse({required String message}) =
      _ChangeNameResponse;

  factory ChangeNameResponse.fromJson(Map<String, Object?> json) =>
      _$ChangeNameResponseFromJson(json);

  Map<String, dynamic> toJson();
}
