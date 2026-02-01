import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_frequency_response.freezed.dart';
part 'person_frequency_response.g.dart';

@freezed
abstract class PersonFrequencyResponse with _$PersonFrequencyResponse {
  const factory PersonFrequencyResponse({
    required List<Frequency> frequencies,
  }) = _PersonFrequencyResponse;

  factory PersonFrequencyResponse.fromJson(Map<String, dynamic> json) =>
      _$PersonFrequencyResponseFromJson(json);
}

@freezed
abstract class Frequency with _$Frequency {
  const factory Frequency({
    required String personName,
    required int frequency,
  }) = _Frequency;

  factory Frequency.fromJson(Map<String, dynamic> json) =>
      _$FrequencyFromJson(json);
}
