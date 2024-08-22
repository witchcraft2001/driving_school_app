// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLoginClicked,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLoginClicked,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoginClicked,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLoginClicked value) onLoginClicked,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLoginClicked value)? onLoginClicked,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoginClicked value)? onLoginClicked,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLoginClicked,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLoginClicked,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoginClicked,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLoginClicked value) onLoginClicked,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLoginClicked value)? onLoginClicked,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoginClicked value)? onLoginClicked,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnLoginClickedImplCopyWith<$Res> {
  factory _$$OnLoginClickedImplCopyWith(_$OnLoginClickedImpl value,
          $Res Function(_$OnLoginClickedImpl) then) =
      __$$OnLoginClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoginClickedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnLoginClickedImpl>
    implements _$$OnLoginClickedImplCopyWith<$Res> {
  __$$OnLoginClickedImplCopyWithImpl(
      _$OnLoginClickedImpl _value, $Res Function(_$OnLoginClickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnLoginClickedImpl implements _OnLoginClicked {
  const _$OnLoginClickedImpl();

  @override
  String toString() {
    return 'LoginEvent.onLoginClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoginClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLoginClicked,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
  }) {
    return onLoginClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLoginClicked,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
  }) {
    return onLoginClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoginClicked,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onLoginClicked != null) {
      return onLoginClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLoginClicked value) onLoginClicked,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
  }) {
    return onLoginClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLoginClicked value)? onLoginClicked,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
  }) {
    return onLoginClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoginClicked value)? onLoginClicked,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onLoginClicked != null) {
      return onLoginClicked(this);
    }
    return orElse();
  }
}

abstract class _OnLoginClicked implements LoginEvent {
  const factory _OnLoginClicked() = _$OnLoginClickedImpl;
}

/// @nodoc
abstract class _$$OnEmailChangedImplCopyWith<$Res> {
  factory _$$OnEmailChangedImplCopyWith(_$OnEmailChangedImpl value,
          $Res Function(_$OnEmailChangedImpl) then) =
      __$$OnEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OnEmailChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnEmailChangedImpl>
    implements _$$OnEmailChangedImplCopyWith<$Res> {
  __$$OnEmailChangedImplCopyWithImpl(
      _$OnEmailChangedImpl _value, $Res Function(_$OnEmailChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$OnEmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnEmailChangedImpl implements _OnEmailChanged {
  const _$OnEmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.onEmailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEmailChangedImplCopyWith<_$OnEmailChangedImpl> get copyWith =>
      __$$OnEmailChangedImplCopyWithImpl<_$OnEmailChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLoginClicked,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
  }) {
    return onEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLoginClicked,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
  }) {
    return onEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoginClicked,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLoginClicked value) onLoginClicked,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLoginClicked value)? onLoginClicked,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoginClicked value)? onLoginClicked,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _OnEmailChanged implements LoginEvent {
  const factory _OnEmailChanged(final String email) = _$OnEmailChangedImpl;

  String get email;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnEmailChangedImplCopyWith<_$OnEmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPasswordChangedImplCopyWith<$Res> {
  factory _$$OnPasswordChangedImplCopyWith(_$OnPasswordChangedImpl value,
          $Res Function(_$OnPasswordChangedImpl) then) =
      __$$OnPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$OnPasswordChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnPasswordChangedImpl>
    implements _$$OnPasswordChangedImplCopyWith<$Res> {
  __$$OnPasswordChangedImplCopyWithImpl(_$OnPasswordChangedImpl _value,
      $Res Function(_$OnPasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$OnPasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPasswordChangedImpl implements _OnPasswordChanged {
  const _$OnPasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPasswordChangedImplCopyWith<_$OnPasswordChangedImpl> get copyWith =>
      __$$OnPasswordChangedImplCopyWithImpl<_$OnPasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLoginClicked,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
  }) {
    return onPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onLoginClicked,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
  }) {
    return onPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoginClicked,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLoginClicked value) onLoginClicked,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnLoginClicked value)? onLoginClicked,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoginClicked value)? onLoginClicked,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OnPasswordChanged implements LoginEvent {
  const factory _OnPasswordChanged(final String password) =
      _$OnPasswordChangedImpl;

  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPasswordChangedImplCopyWith<_$OnPasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginViewState viewState) show,
    required TResult Function(UserEntity user) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginViewState viewState)? show,
    TResult? Function(UserEntity user)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginViewState viewState)? show,
    TResult Function(UserEntity user)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Show value) show,
    required TResult Function(LoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Show value)? show,
    TResult? Function(LoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Show value)? show,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginViewState viewState) show,
    required TResult Function(UserEntity user) loggedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginViewState viewState)? show,
    TResult? Function(UserEntity user)? loggedIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginViewState viewState)? show,
    TResult Function(UserEntity user)? loggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Show value) show,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Show value)? show,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Show value)? show,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ShowImplCopyWith<$Res> {
  factory _$$ShowImplCopyWith(
          _$ShowImpl value, $Res Function(_$ShowImpl) then) =
      __$$ShowImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginViewState viewState});

  $LoginViewStateCopyWith<$Res> get viewState;
}

/// @nodoc
class __$$ShowImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ShowImpl>
    implements _$$ShowImplCopyWith<$Res> {
  __$$ShowImplCopyWithImpl(_$ShowImpl _value, $Res Function(_$ShowImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
  }) {
    return _then(_$ShowImpl(
      null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as LoginViewState,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginViewStateCopyWith<$Res> get viewState {
    return $LoginViewStateCopyWith<$Res>(_value.viewState, (value) {
      return _then(_value.copyWith(viewState: value));
    });
  }
}

/// @nodoc

class _$ShowImpl implements _Show {
  const _$ShowImpl(this.viewState);

  @override
  final LoginViewState viewState;

  @override
  String toString() {
    return 'LoginState.show(viewState: $viewState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowImpl &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewState);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowImplCopyWith<_$ShowImpl> get copyWith =>
      __$$ShowImplCopyWithImpl<_$ShowImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginViewState viewState) show,
    required TResult Function(UserEntity user) loggedIn,
  }) {
    return show(viewState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginViewState viewState)? show,
    TResult? Function(UserEntity user)? loggedIn,
  }) {
    return show?.call(viewState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginViewState viewState)? show,
    TResult Function(UserEntity user)? loggedIn,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(viewState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Show value) show,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Show value)? show,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Show value)? show,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class _Show implements LoginState {
  const factory _Show(final LoginViewState viewState) = _$ShowImpl;

  LoginViewState get viewState;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowImplCopyWith<_$ShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoggedInImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl implements LoggedIn {
  const _$LoggedInImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'LoginState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoginViewState viewState) show,
    required TResult Function(UserEntity user) loggedIn,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoginViewState viewState)? show,
    TResult? Function(UserEntity user)? loggedIn,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoginViewState viewState)? show,
    TResult Function(UserEntity user)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Show value) show,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Show value)? show,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Show value)? show,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements LoginState {
  const factory LoggedIn(final UserEntity user) = _$LoggedInImpl;

  UserEntity get user;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
