// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/interactor/user_interactor.dart';
import 'package:planny/core/domain/entity/user_entity.dart';

part 'generated/profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserInteractor _userInteractor;

  ProfileBloc(this._userInteractor) : super(ProfileState.initial(_userInteractor.user!)) {
    on<ProfileEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
