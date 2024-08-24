// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/repository/settings_repository.dart';

@lazySingleton
class RefreshTokenAuthInterceptor extends InterceptorsWrapper {
  final SettingsRepository _repository;

  RefreshTokenAuthInterceptor(this._repository);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final refreshToken = await _repository.getRefreshToken();
    options.headers['Authorization'] = 'Bearer $refreshToken';

    handler.next(options);
  }
}
