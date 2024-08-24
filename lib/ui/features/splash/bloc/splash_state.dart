part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.schoolSelected() = SchoolSelected;
  const factory SplashState.authorized() = Authorized;
  const factory SplashState.notAuthorized() = NotAuthorized;
  const factory SplashState.networkError() = NetworkError;
}
