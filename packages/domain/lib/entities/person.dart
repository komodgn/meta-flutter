import 'package:freezed_annotation/freezed_annotation.dart';
import 'face.dart';

part 'person.freezed.dart';

@freezed
abstract class Person with _$Person {
  const factory Person({
    required int id,
    required String systemName,
    required String inputName,
    @Default("") String phoneNumber,
    @Default(false) bool isHomeDisplay,
    @Default(0) int photoCount,
    @Default(0) int totalDuration,
    @Default(0.0) double normalizedScore,
    int? representativeFaceId,
    @Default([]) List<Face> faces,
  }) = _Person;

  const Person._();

  Face? get representativeFace =>
      faces.where((f) => f.id == representativeFaceId).firstOrNull ??
      faces.firstOrNull;
}
