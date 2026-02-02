import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_frequency_request.freezed.dart';
part 'person_frequency_request.g.dart';

@freezed
abstract class PersonFrequencyRequest with _$PersonFrequencyRequest {
  const factory PersonFrequencyRequest({
    required String dbName,
    required List<String> personNames,
  }) = _PersonFrequencyRequest;

  factory PersonFrequencyRequest.fromJson(Map<String, Object?> json) =>
      _$PersonFrequencyRequestFromJson(json);

  Map<String, dynamic> toJson();
}
