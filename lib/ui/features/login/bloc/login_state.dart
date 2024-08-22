part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.show(LoginViewState viewState) = _Show;
  const factory LoginState.loggedIn(UserEntity user) = LoggedIn;
}
