import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'face.freezed.dart';

@freezed
abstract class Face with _$Face {
  const factory Face({
    required int id,
    required int personId,
    required String systemName,
    required Uint8List imageData,
    @Default("") String phoneNumber,
  }) = _Face;
}
