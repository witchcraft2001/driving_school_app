// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/interactor/selected_school_interactor.dart';
import 'package:planny/core/data/provider/dio_provider.dart';
import 'package:planny/core/data/service/http_service.dart';
import 'package:planny/core/data/service/interceptor/refresh_token_auth_interceptor.dart';
import 'package:planny/core/data/service/log_service.dart';

@lazySingleton
class RefreshTokenApiService extends HttpService {
  final SelectedSchoolInteractor _selectedSchoolInteractor;

  RefreshTokenApiService(
    DioProvider dioProvider,
    LogService logService,
    this._selectedSchoolInteractor,
    RefreshTokenAuthInterceptor refreshTokenInterceptor,
  ) : super(dioProvider.provideDio(), logService, interceptorList: [refreshTokenInterceptor]);

  @override
  String get baseUrl => _selectedSchoolInteractor.get()!.domain;
}
