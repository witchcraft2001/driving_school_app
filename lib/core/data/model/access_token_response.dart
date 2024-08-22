// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'generated/access_token_response.g.dart';

@JsonSerializable()
class AccessTokenResponse {
  @JsonKey(name: 'access_token')
  final String accessToken;
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  factory AccessTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenResponseFromJson(json);

  AccessTokenResponse(this.accessToken, this.refreshToken);

  Map<String, dynamic> toJson() => _$AccessTokenResponseToJson(this);
}
