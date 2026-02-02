// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_frequency_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersonFrequencyResponse _$PersonFrequencyResponseFromJson(
  Map<String, dynamic> json,
) => _PersonFrequencyResponse(
  frequencies: (json['frequencies'] as List<dynamic>)
      .map((e) => Frequency.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PersonFrequencyResponseToJson(
  _PersonFrequencyResponse instance,
) => <String, dynamic>{'frequencies': instance.frequencies};

_Frequency _$FrequencyFromJson(Map<String, dynamic> json) => _Frequency(
  personName: json['personName'] as String,
  frequency: (json['frequency'] as num).toInt(),
);

Map<String, dynamic> _$FrequencyToJson(_Frequency instance) =>
    <String, dynamic>{
      'personName': instance.personName,
      'frequency': instance.frequency,
    };
