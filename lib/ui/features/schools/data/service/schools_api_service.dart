// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/common/constants.dart';
import 'package:planny/core/data/provider/dio_provider.dart';
import 'package:planny/core/data/service/http_service.dart';
import 'package:planny/core/data/service/interceptor/fake_auth_interceptor.dart';
import 'package:planny/core/data/service/log_service.dart';

@lazySingleton
class SchoolsApiService extends HttpService {
  final Constants _constants;

  SchoolsApiService(
    DioProvider dioProvider,
    LogService logService,
    FakeAuthInterceptor fakeAuthInterceptor,
    this._constants,
  ) : super(dioProvider.provideDio(), logService, interceptorList: [fakeAuthInterceptor]);

  @override
  String get baseUrl => _constants.getAdminApiBaseUrl();
}
