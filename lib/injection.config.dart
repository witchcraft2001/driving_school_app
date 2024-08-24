// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:planny/core/common/constants.dart' as _i918;
import 'package:planny/core/data/data_source/auth_data_source.dart' as _i913;
import 'package:planny/core/data/data_source/lessons_data_source.dart' as _i496;
import 'package:planny/core/data/data_source/secure_settings_data_source.dart'
    as _i316;
import 'package:planny/core/data/data_source/settings_data_source.dart'
    as _i1052;
import 'package:planny/core/data/data_source/user_data_source.dart' as _i285;
import 'package:planny/core/data/interactor/auth_interactor.dart' as _i639;
import 'package:planny/core/data/interactor/lessons_interactor.dart' as _i11;
import 'package:planny/core/data/interactor/selected_school_interactor.dart'
    as _i50;
import 'package:planny/core/data/interactor/user_interactor.dart' as _i678;
import 'package:planny/core/data/provider/dio_provider.dart' as _i970;
import 'package:planny/core/data/provider/secure_storage_provider.dart'
    as _i631;
import 'package:planny/core/data/repository/auth_repository.dart' as _i582;
import 'package:planny/core/data/repository/lessons_repository.dart' as _i1060;
import 'package:planny/core/data/repository/settings_repository.dart' as _i941;
import 'package:planny/core/data/repository/user_repository.dart' as _i603;
import 'package:planny/core/data/service/auth_api_service.dart' as _i682;
import 'package:planny/core/data/service/interceptor/access_token_interceptor.dart'
    as _i195;
import 'package:planny/core/data/service/interceptor/fake_auth_interceptor.dart'
    as _i7;
import 'package:planny/core/data/service/interceptor/refresh_token_auth_interceptor.dart'
    as _i494;
import 'package:planny/core/data/service/log_service.dart' as _i676;
import 'package:planny/core/data/service/refresh_token_api_service.dart'
    as _i33;
import 'package:planny/core/data/service/student_api_service.dart' as _i938;
import 'package:planny/di/module/app_module.dart' as _i399;
import 'package:planny/ui/features/home/bloc/home_bloc.dart' as _i376;
import 'package:planny/ui/features/login/bloc/login_bloc.dart' as _i12;
import 'package:planny/ui/features/profile/bloc/profile_bloc.dart' as _i179;
import 'package:planny/ui/features/schools/bloc/schools_bloc.dart' as _i617;
import 'package:planny/ui/features/schools/data/data_source/schools_data_source.dart'
    as _i12;
import 'package:planny/ui/features/schools/data/repository/schools_repository.dart'
    as _i30;
import 'package:planny/ui/features/schools/data/service/schools_api_service.dart'
    as _i437;
import 'package:planny/ui/features/schools/domain/interactor/schools_interactor.dart'
    as _i512;
import 'package:planny/ui/features/splash/bloc/splash_bloc.dart' as _i275;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.providePrefs,
      preResolve: true,
    );
    gh.factory<_i970.DioProvider>(() => _i970.DioProvider());
    gh.lazySingleton<_i918.Constants>(() => _i918.Constants());
    gh.lazySingleton<_i631.SecureStorageProvider>(
        () => _i631.SecureStorageProvider());
    gh.lazySingleton<_i676.LogService>(() => _i676.LogService());
    gh.lazySingleton<_i7.FakeAuthInterceptor>(() => _i7.FakeAuthInterceptor());
    gh.lazySingleton<_i1052.SettingsDataSource>(
        () => _i1052.SettingsDataSource(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i316.SecureSettingsDataSource>(() =>
        _i316.SecureSettingsDataSource(gh<_i631.SecureStorageProvider>()));
    gh.lazySingleton<_i941.SettingsRepository>(() => _i941.SettingsRepository(
          gh<_i1052.SettingsDataSource>(),
          gh<_i676.LogService>(),
          gh<_i316.SecureSettingsDataSource>(),
        ));
    gh.lazySingleton<_i437.SchoolsApiService>(() => _i437.SchoolsApiService(
          gh<_i970.DioProvider>(),
          gh<_i676.LogService>(),
          gh<_i7.FakeAuthInterceptor>(),
          gh<_i918.Constants>(),
        ));
    gh.factory<_i12.SchoolsDataSource>(() => _i12.SchoolsDataSource(
          gh<_i437.SchoolsApiService>(),
          gh<_i676.LogService>(),
        ));
    gh.lazySingleton<_i494.RefreshTokenAuthInterceptor>(() =>
        _i494.RefreshTokenAuthInterceptor(gh<_i941.SettingsRepository>()));
    gh.lazySingleton<_i50.SelectedSchoolInteractor>(
        () => _i50.SelectedSchoolInteractor(gh<_i941.SettingsRepository>()));
    gh.lazySingleton<_i682.AuthApiService>(() => _i682.AuthApiService(
          gh<_i970.DioProvider>(),
          gh<_i676.LogService>(),
          gh<_i50.SelectedSchoolInteractor>(),
        ));
    gh.lazySingleton<_i30.SchoolsRepository>(
        () => _i30.SchoolsRepository(gh<_i12.SchoolsDataSource>()));
    gh.factory<_i512.SchoolsInteractor>(
        () => _i512.SchoolsInteractor(gh<_i30.SchoolsRepository>()));
    gh.factory<_i617.SchoolsBloc>(() => _i617.SchoolsBloc(
          gh<_i512.SchoolsInteractor>(),
          gh<_i676.LogService>(),
          gh<_i50.SelectedSchoolInteractor>(),
        ));
    gh.lazySingleton<_i33.RefreshTokenApiService>(
        () => _i33.RefreshTokenApiService(
              gh<_i970.DioProvider>(),
              gh<_i676.LogService>(),
              gh<_i50.SelectedSchoolInteractor>(),
              gh<_i494.RefreshTokenAuthInterceptor>(),
            ));
    gh.factory<_i913.AuthDataSource>(() => _i913.AuthDataSource(
          gh<_i682.AuthApiService>(),
          gh<_i676.LogService>(),
          gh<_i33.RefreshTokenApiService>(),
        ));
    gh.factory<_i582.AuthRepository>(
        () => _i582.AuthRepository(gh<_i913.AuthDataSource>()));
    gh.lazySingleton<_i639.AuthInteractor>(() => _i639.AuthInteractor(
          gh<_i582.AuthRepository>(),
          gh<_i941.SettingsRepository>(),
        ));
    gh.lazySingleton<_i195.AccessTokenInterceptor>(
        () => _i195.AccessTokenInterceptor(gh<_i639.AuthInteractor>()));
    gh.lazySingleton<_i938.StudentApiService>(() => _i938.StudentApiService(
          gh<_i970.DioProvider>(),
          gh<_i676.LogService>(),
          gh<_i50.SelectedSchoolInteractor>(),
          gh<_i195.AccessTokenInterceptor>(),
        ));
    gh.factory<_i285.UserDataSource>(() => _i285.UserDataSource(
          gh<_i938.StudentApiService>(),
          gh<_i676.LogService>(),
        ));
    gh.factory<_i496.LessonsDataSource>(() => _i496.LessonsDataSource(
          gh<_i938.StudentApiService>(),
          gh<_i676.LogService>(),
        ));
    gh.factory<_i1060.LessonsRepository>(() => _i1060.LessonsRepository(
          gh<_i496.LessonsDataSource>(),
          gh<_i676.LogService>(),
        ));
    gh.factory<_i603.UserRepository>(
        () => _i603.UserRepository(gh<_i285.UserDataSource>()));
    gh.factory<_i11.LessonsInteractor>(
        () => _i11.LessonsInteractor(gh<_i1060.LessonsRepository>()));
    gh.lazySingleton<_i678.UserInteractor>(
        () => _i678.UserInteractor(gh<_i603.UserRepository>()));
    gh.factory<_i275.SplashBloc>(() => _i275.SplashBloc(
          gh<_i639.AuthInteractor>(),
          gh<_i678.UserInteractor>(),
          gh<_i676.LogService>(),
          gh<_i50.SelectedSchoolInteractor>(),
        ));
    gh.factory<_i179.ProfileBloc>(() => _i179.ProfileBloc(
          gh<_i678.UserInteractor>(),
          gh<_i639.AuthInteractor>(),
          gh<_i50.SelectedSchoolInteractor>(),
        ));
    gh.factory<_i12.LoginBloc>(() => _i12.LoginBloc(
          gh<_i50.SelectedSchoolInteractor>(),
          gh<_i639.AuthInteractor>(),
          gh<_i676.LogService>(),
          gh<_i678.UserInteractor>(),
        ));
    gh.factory<_i376.HomeBloc>(() => _i376.HomeBloc(
          gh<_i50.SelectedSchoolInteractor>(),
          gh<_i678.UserInteractor>(),
          gh<_i676.LogService>(),
          gh<_i11.LessonsInteractor>(),
        ));
    return this;
  }
}

class _$AppModule extends _i399.AppModule {}
