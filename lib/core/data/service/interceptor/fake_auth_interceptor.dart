// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FakeAuthInterceptor extends InterceptorsWrapper {
  FakeAuthInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    const token = '18|XIRVfkW37Edt84aKZyLzMUHsw8irrUVJS5wEbS1eea47ed33';
    options.headers['Authorization'] = 'Bearer $token';

    handler.next(options);
  }
}
