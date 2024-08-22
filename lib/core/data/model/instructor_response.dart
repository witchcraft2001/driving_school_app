// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'generated/instructor_response.g.dart';

@JsonSerializable()
class InstructorResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'media_url')
  final String avatar;

  factory InstructorResponse.fromJson(Map<String, dynamic> json) => _$InstructorResponseFromJson(json);

  InstructorResponse({
    required this.id,
    required this.name,
    required this.avatar,
  });

  Map<String, dynamic> toJson() => _$InstructorResponseToJson(this);
}
