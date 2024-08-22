// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/common/exception/repository_exception.dart';
import 'package:planny/core/data/model/user_response.dart';
import 'package:planny/core/data/service/http_service.dart';
import 'package:planny/core/data/service/log_service.dart';
import 'package:planny/core/data/service/student_api_service.dart';

@injectable
class UserDataSource {
  final StudentApiService _apiService;
  final LogService _logService;

  UserDataSource(this._apiService, this._logService);

  Future<UserResponse> getMe() async {
    try {
      final response = await _apiService.request(
        url: 'auth/me',
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        return UserResponse.fromJson(response.data);
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
