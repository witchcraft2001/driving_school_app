// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/interactor/auth_interactor.dart';
import 'package:planny/core/data/interactor/selected_school_interactor.dart';
import 'package:planny/core/data/interactor/user_interactor.dart';
import 'package:planny/core/domain/entity/user_entity.dart';

part 'generated/profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserInteractor _userInteractor;
  final AuthInteractor _authInteractor;
  final SelectedSchoolInteractor _selectedSchoolInteractor;

  ProfileBloc(
    this._userInteractor,
    this._authInteractor,
    this._selectedSchoolInteractor,
  ) : super(ProfileState.initial(_userInteractor.user!)) {
    on<_OnLogoutClicked>((event, emit) async {
      await _authInteractor.removeToken();
      await _selectedSchoolInteractor.remove();
      emit(const ProfileState.loggedOut());
    });
  }
}
