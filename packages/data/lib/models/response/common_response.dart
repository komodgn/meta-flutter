import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_response.freezed.dart';
part 'common_response.g.dart';

@freezed
abstract class CommonResponse with _$CommonResponse {
  const factory CommonResponse({
    required String? message,
    required String? error,
  }) = _CommonResponse;

  factory CommonResponse.fromJson(Map<String, dynamic> json) =>
      _$CommonResponseFromJson(json);
}
