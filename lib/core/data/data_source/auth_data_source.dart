// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/common/exception/repository_exception.dart';
import 'package:planny/core/data/model/refresh_token_response.dart';
import 'package:planny/core/data/service/http_service.dart';
import 'package:planny/core/data/service/log_service.dart';
import 'package:planny/core/data/service/refresh_token_api_service.dart';
import '../model/login_response.dart';
import '../service/auth_api_service.dart';

@injectable
class AuthDataSource {
  final AuthApiService _apiService;
  final RefreshTokenApiService _refreshTokenApiService;
  final LogService _logService;

  AuthDataSource(this._apiService, this._logService, this._refreshTokenApiService);

  Future<LoginResponse> login(String email, String password) async {
    try {
      final response = await _apiService.request(
        url: 'auth/access-token',
        method: Method.POST,
        params: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final result = LoginResponse.fromJson(response.data);

        return result;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }


  Future<String> refreshToken() async {
    try {
      final response = await _refreshTokenApiService.request(
        url: 'auth/refresh-token',
        method: Method.POST,
      );

      if (response.statusCode == 200) {
        final result = RefreshTokenResponse.fromJson(response.data);

        return result.accessToken;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
