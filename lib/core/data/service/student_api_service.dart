// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/interactor/selected_school_interactor.dart';
import 'package:planny/core/data/provider/dio_provider.dart';
import 'package:planny/core/data/service/http_service.dart';
import 'package:planny/core/data/service/interceptor/auth_interceptor.dart';
import 'package:planny/core/data/service/log_service.dart';

@lazySingleton
class StudentApiService extends HttpService {
  final SelectedSchoolInteractor _selectedSchoolInteractor;

  StudentApiService(
    DioProvider dioProvider,
    LogService logService,
    this._selectedSchoolInteractor,
    AuthInterceptor authInterceptor,
  ) : super(dioProvider.provideDio(), logService, interceptorList: [authInterceptor]);

  @override
  String get baseUrl => _selectedSchoolInteractor.get()!.domain;
}
