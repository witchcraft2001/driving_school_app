// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'generated/school_response.g.dart';

@JsonSerializable()
class SchoolResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'domain')
  final String domain;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'status')
  final String status;

  factory SchoolResponse.fromJson(Map<String, dynamic> json) => _$SchoolResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SchoolResponseToJson(this);

  SchoolResponse({
    required this.id,
    required this.name,
    required this.domain,
    required this.url,
    required this.status,
  });
}

class SchoolListResponse {
  List<SchoolResponse> list = List.empty();

  SchoolListResponse(this.list);

  SchoolListResponse.fromMappedJson(List<dynamic>? json) {
    list = json != null ? json.map((e) => SchoolResponse.fromJson(e)).toList() : List.empty();
  }
}
