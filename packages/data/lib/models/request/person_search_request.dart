import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_search_request.freezed.dart';
part 'person_search_request.g.dart';

@freezed
abstract class PersonSearchRequest with _$PersonSearchRequest {
  const factory PersonSearchRequest({
    required String dbName,
    required String personName,
  }) = _PersonSearchRequest;

  factory PersonSearchRequest.fromJson(Map<String, Object?> json) =>
      _$PersonSearchRequestFromJson(json);

  Map<String, dynamic> toJson();
}
