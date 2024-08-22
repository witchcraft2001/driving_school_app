// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'generated/student_response.g.dart';

@JsonSerializable()
class StudentResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'media_url')
  final String avatar;
  @JsonKey(name: 'transmission')
  final String transmission;

  factory StudentResponse.fromJson(Map<String, dynamic> json) => _$StudentResponseFromJson(json);

  StudentResponse({
    required this.id,
    required this.name,
    required this.avatar,
    required this.transmission,
  });

  Map<String, dynamic> toJson() => _$StudentResponseToJson(this);
}
