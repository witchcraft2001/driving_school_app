// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'generated/user_response.g.dart';

@JsonSerializable()
class UserResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'role')
  final String role;
  @JsonKey(name: 'avatar')
  final String avatar;
  @JsonKey(name: 'transmission')
  final String transmission;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  UserResponse({
    required this.id,
    required this.name,
    required this.email,
    required this.status,
    required this.role,
    required this.avatar,
    required this.transmission,
  });

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
