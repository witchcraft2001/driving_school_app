// Project imports:
import 'package:planny/core/data/model/login_response.dart';
import 'package:planny/core/domain/entity/access_refresh_token_entity.dart';

extension AccessTokenResponseMapper on LoginResponse {
  AccessRefreshTokenEntity toDomain() =>
      AccessRefreshTokenEntity(accessToken: accessToken, refreshToken: refreshToken);
}
