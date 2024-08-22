part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.onLoginClicked() = _OnLoginClicked;
  const factory LoginEvent.onEmailChanged(String email) = _OnEmailChanged;
  const factory LoginEvent.onPasswordChanged(String password) = _OnPasswordChanged;
}
