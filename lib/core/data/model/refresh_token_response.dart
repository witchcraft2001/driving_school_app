// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'generated/refresh_token_response.g.dart';

@JsonSerializable()
class RefreshTokenResponse {
  @JsonKey(name: 'access_token')
  final String accessToken;

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);

  RefreshTokenResponse(this.accessToken);

  Map<String, dynamic> toJson() => _$RefreshTokenResponseToJson(this);
}
