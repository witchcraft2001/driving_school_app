// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../schools/domain/entity/school_entity.dart';

part 'generated/login_view_state.freezed.dart';

@freezed
class LoginViewState with _$LoginViewState {
  const factory LoginViewState({
    @Default(false) bool isLoading,
    required SchoolEntity school,
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isError,
  }) = _LoginViewState;
}
