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
import 'package:planny/core/data/provider/dio_provider.dart' as _i970;
import 'package:planny/core/data/service/interceptor/fake_auth_interceptor.dart'
    as _i7;
import 'package:planny/core/data/service/log_service.dart' as _i676;
import 'package:planny/ui/features/schools/bloc/schools_bloc.dart' as _i617;
import 'package:planny/ui/features/schools/data/data_source/schools_data_source.dart'
    as _i12;
import 'package:planny/ui/features/schools/data/repository/schools_repository.dart'
    as _i30;
import 'package:planny/ui/features/schools/data/service/schools_api_service.dart'
    as _i437;
import 'package:planny/ui/features/schools/domain/interactor/schools_interactor.dart'
    as _i512;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i970.DioProvider>(() => _i970.DioProvider());
    gh.lazySingleton<_i918.Constants>(() => _i918.Constants());
    gh.lazySingleton<_i676.LogService>(() => _i676.LogService());
    gh.lazySingleton<_i7.FakeAuthInterceptor>(() => _i7.FakeAuthInterceptor());
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
    gh.lazySingleton<_i30.SchoolsRepository>(
        () => _i30.SchoolsRepository(gh<_i12.SchoolsDataSource>()));
    gh.factory<_i512.SchoolsInteractor>(
        () => _i512.SchoolsInteractor(gh<_i30.SchoolsRepository>()));
    gh.factory<_i617.SchoolsBloc>(() => _i617.SchoolsBloc(
          gh<_i512.SchoolsInteractor>(),
          gh<_i676.LogService>(),
        ));
    return this;
  }
}
