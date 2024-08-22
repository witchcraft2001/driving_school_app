// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/interactor/auth_interactor.dart';

@lazySingleton
class AuthInterceptor extends InterceptorsWrapper {
  final AuthInteractor _interactor;

  AuthInterceptor(this._interactor);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Authorization'] = 'Bearer ${_interactor.accessToken}';

    handler.next(options);
  }
}
