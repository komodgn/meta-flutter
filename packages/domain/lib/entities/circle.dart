import 'package:freezed_annotation/freezed_annotation.dart';

part 'circle.freezed.dart';
part 'circle.g.dart';

@freezed
abstract class Circle with _$Circle {
  const factory Circle({
    required double centerX,
    required double centerY,
    required double radius,
  }) = _Circle;

  factory Circle.fromJson(Map<String, Object?> json) => _$CircleFromJson(json);
}
