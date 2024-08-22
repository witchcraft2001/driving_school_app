// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/common/exception/repository_exception.dart';
import 'package:planny/core/data/service/http_service.dart';
import 'package:planny/core/data/service/log_service.dart';
import '../model/access_token_response.dart';
import '../service/auth_api_service.dart';

@injectable
class AuthDataSource {
  final AuthApiService _apiService;
  final LogService _logService;

  AuthDataSource(this._apiService, this._logService);

  Future<AccessTokenResponse> login(String email, String password) async {
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
        final result = AccessTokenResponse.fromJson(response.data);

        return result;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
