import 'package:json_annotation/json_annotation.dart';

part 'nl_search_request.g.dart';

@JsonSerializable()
class NlSearchRequest {
  @JsonKey(name: 'dbName')
  final String dbName;

  @JsonKey(name: 'query')
  final String query;

  NlSearchRequest({required this.dbName, required this.query});

  factory NlSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$NlSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NlSearchRequestToJson(this);
}
