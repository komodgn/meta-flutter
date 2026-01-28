import 'package:domain/entities/circle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drag_search_request.freezed.dart';
part 'drag_search_request.g.dart';

@freezed
abstract class DragSearchRequest with _$DragSearchRequest {
  const factory DragSearchRequest({required List<Circle> circles}) =
      _DragSearchRequest;

  factory DragSearchRequest.fromJson(Map<String, Object?> json) =>
      _$DragSearchRequestFromJson(json);

  Map<String, dynamic> toJson();
}
