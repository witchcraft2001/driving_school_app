// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'generated/login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'access_token')
  final String accessToken;
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  LoginResponse(this.accessToken, this.refreshToken);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
