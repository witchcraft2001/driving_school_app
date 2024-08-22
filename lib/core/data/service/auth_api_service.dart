// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/interactor/selected_school_interactor.dart';
import 'package:planny/core/data/provider/dio_provider.dart';
import 'package:planny/core/data/service/http_service.dart';
import 'package:planny/core/data/service/log_service.dart';

@lazySingleton
class AuthApiService extends HttpService {
  final SelectedSchoolInteractor _selectedSchoolInteractor;

  AuthApiService(
    DioProvider dioProvider,
    LogService logService,
    this._selectedSchoolInteractor,
  ) : super(dioProvider.provideDio(), logService);

  @override
  String get baseUrl => _selectedSchoolInteractor.get()!.domain;
}
