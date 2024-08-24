part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial(UserEntity user) = _Initial;
  const factory ProfileState.loggedOut() = LoggedOut;
}
