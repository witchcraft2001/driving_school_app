// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/common/exception/http_service_exception.dart';
import 'package:planny/core/data/interactor/auth_interactor.dart';
import 'package:planny/core/data/interactor/selected_school_interactor.dart';
import 'package:planny/core/data/interactor/user_interactor.dart';
import 'package:planny/core/data/service/log_service.dart';

part 'generated/splash_bloc.freezed.dart';

part 'splash_event.dart';

part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AuthInteractor _authInteractor;
  final UserInteractor _userInteractor;
  final LogService _logService;
  final SelectedSchoolInteractor _selectedSchoolInteractor;

  SplashBloc(
    this._authInteractor,
    this._userInteractor,
    this._logService,
    this._selectedSchoolInteractor,
  ) : super(const SplashState.initial()) {
    on<_Started>((event, emit) async {
      try {
        final school = _selectedSchoolInteractor.get();
        if (school == null) {
          emit(const SplashState.notAuthorized());
        } else {
          final hasStoredToken = await _authInteractor.isUserAuthorized();
          if (!hasStoredToken) {
            emit(const SplashState.schoolSelected());
          } else {
            try {
              await _authInteractor.refreshToken();
              await _userInteractor.getMe();
              emit(const SplashState.authorized());
            } on UnauthorizedHttpException {
              emit(const SplashState.schoolSelected());
            } catch (e) {
              rethrow;
            }
          }
        }
      } catch (e, stack) {
        await _logService.recordError(e, stack);
        emit(const SplashState.networkError());
      }
    });
  }
}
