// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/interactor/auth_interactor.dart';
import 'package:planny/core/data/interactor/selected_school_interactor.dart';
import 'package:planny/core/data/interactor/user_interactor.dart';
import 'package:planny/core/data/service/log_service.dart';
import 'package:planny/core/domain/entity/user_entity.dart';
import 'package:planny/ui/features/login/bloc/login_view_state.dart';

part 'generated/login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SelectedSchoolInteractor _selectedSchoolInteractor;
  final AuthInteractor _authInteractor;
  final UserInteractor _userInteractor;
  final LogService _logService;

  LoginBloc(
    this._selectedSchoolInteractor,
    this._authInteractor, this._logService, this._userInteractor,
  ) : super(const LoginState.initial()) {
    on<_Started>((event, emit) => _init(emit));
    on<_OnEmailChanged>(
        (event, emit) => _updateState(_getViewState().copyWith(email: event.email), emit));
    on<_OnPasswordChanged>(
        (event, emit) => _updateState(_getViewState().copyWith(password: event.password), emit));
    on<_OnLoginClicked>((event, emit) => _onLoginClicked(emit));
  }

  void _init(Emitter<LoginState> emit) {
    final school = _selectedSchoolInteractor.get();
    _updateState(_getViewState().copyWith(school: school!), emit);
  }

  void _onLoginClicked(Emitter<LoginState> emit) async {
    _updateState(_getViewState().copyWith(isLoading: true), emit);
    try {
      final result = await _authInteractor.login(_getViewState().email, _getViewState().password);
      final user = await _userInteractor.getMe();
      emit(LoginState.loggedIn(user));
    } catch (e, stack) {
      _logService.recordError(e, stack);
      _updateState(_getViewState().copyWith(isLoading: false, isError: true), emit);
    }
  }

  void _updateState(LoginViewState viewState, Emitter<LoginState> emit) {
    emit(LoginState.show(viewState));
  }

  LoginViewState _getViewState() {
    return (state is _Show)
        ? (state as _Show).viewState
        : LoginViewState(school: _selectedSchoolInteractor.get()!);
  }
}
