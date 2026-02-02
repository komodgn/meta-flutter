import 'package:freezed_annotation/freezed_annotation.dart';

part 'triple_response.freezed.dart';
part 'triple_response.g.dart';

@freezed
abstract class TripleResponse with _$TripleResponse {
  const factory TripleResponse({required String triple}) = _TripleResponse;

  factory TripleResponse.fromJson(Map<String, Object?> json) =>
      _$TripleResponseFromJson(json);

  Map<String, dynamic> toJson();
}
