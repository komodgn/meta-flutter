import 'package:freezed_annotation/freezed_annotation.dart';

part 'drag_search_request.freezed.dart';
part 'drag_search_request.g.dart';

@freezed
abstract class DragSearchRequest with _$DragSearchRequest {
  const factory DragSearchRequest({required List<CircleDto> circles}) =
      _DragSearchRequest;

  factory DragSearchRequest.fromJson(Map<String, Object?> json) =>
      _$DragSearchRequestFromJson(json);

  Map<String, dynamic> toJson();
}

@freezed
abstract class CircleDto with _$CircleDto {
  const factory CircleDto({
    required double centerX,
    required double centerY,
    required double radius,
  }) = _CircleDto;

  factory CircleDto.fromJson(Map<String, Object?> json) =>
      _$CircleDtoFromJson(json);

  Map<String, dynamic> toJson();
}
