// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FakeAuthInterceptor extends InterceptorsWrapper {
  FakeAuthInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    const token = '20|AQxVsp8gVRXPugmAzdNxAPG7Dj5tNQmeBLzK67an68162482';
    options.headers['Authorization'] = 'Bearer $token';

    handler.next(options);
  }
}
