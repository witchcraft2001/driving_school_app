// Project imports:
import 'package:planny/core/data/model/access_token_response.dart';
import 'package:planny/core/domain/entity/access_token_entity.dart';

extension AccessTokenResponseMapper on AccessTokenResponse {
  AccessTokenEntity toDomain() =>
      AccessTokenEntity(accessToken: accessToken, refreshToken: refreshToken);
}
