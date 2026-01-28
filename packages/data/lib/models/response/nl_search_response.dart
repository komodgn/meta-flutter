import 'package:json_annotation/json_annotation.dart';

part 'nl_search_response.g.dart';

@JsonSerializable()
class NLSearchResponse {
  @JsonKey(name: 'PhotoName')
  final List<String> photoNames;

  NLSearchResponse({required this.photoNames});

  factory NLSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$NLSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NLSearchResponseToJson(this);
}
