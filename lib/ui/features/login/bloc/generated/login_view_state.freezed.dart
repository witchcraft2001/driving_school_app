// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../login_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  SchoolEntity get school => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  /// Create a copy of LoginViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginViewStateCopyWith<LoginViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginViewStateCopyWith<$Res> {
  factory $LoginViewStateCopyWith(
          LoginViewState value, $Res Function(LoginViewState) then) =
      _$LoginViewStateCopyWithImpl<$Res, LoginViewState>;
  @useResult
  $Res call(
      {bool isLoading,
      SchoolEntity school,
      String email,
      String password,
      bool isError});
}

/// @nodoc
class _$LoginViewStateCopyWithImpl<$Res, $Val extends LoginViewState>
    implements $LoginViewStateCopyWith<$Res> {
  _$LoginViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? school = null,
    Object? email = null,
    Object? password = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolEntity,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginViewStateImplCopyWith<$Res>
    implements $LoginViewStateCopyWith<$Res> {
  factory _$$LoginViewStateImplCopyWith(_$LoginViewStateImpl value,
          $Res Function(_$LoginViewStateImpl) then) =
      __$$LoginViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      SchoolEntity school,
      String email,
      String password,
      bool isError});
}

/// @nodoc
class __$$LoginViewStateImplCopyWithImpl<$Res>
    extends _$LoginViewStateCopyWithImpl<$Res, _$LoginViewStateImpl>
    implements _$$LoginViewStateImplCopyWith<$Res> {
  __$$LoginViewStateImplCopyWithImpl(
      _$LoginViewStateImpl _value, $Res Function(_$LoginViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? school = null,
    Object? email = null,
    Object? password = null,
    Object? isError = null,
  }) {
    return _then(_$LoginViewStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolEntity,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginViewStateImpl implements _LoginViewState {
  const _$LoginViewStateImpl(
      {this.isLoading = false,
      required this.school,
      this.email = '',
      this.password = '',
      this.isError = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final SchoolEntity school;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'LoginViewState(isLoading: $isLoading, school: $school, email: $email, password: $password, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginViewStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, school, email, password, isError);

  /// Create a copy of LoginViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginViewStateImplCopyWith<_$LoginViewStateImpl> get copyWith =>
      __$$LoginViewStateImplCopyWithImpl<_$LoginViewStateImpl>(
          this, _$identity);
}

abstract class _LoginViewState implements LoginViewState {
  const factory _LoginViewState(
      {final bool isLoading,
      required final SchoolEntity school,
      final String email,
      final String password,
      final bool isError}) = _$LoginViewStateImpl;

  @override
  bool get isLoading;
  @override
  SchoolEntity get school;
  @override
  String get email;
  @override
  String get password;
  @override
  bool get isError;

  /// Create a copy of LoginViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginViewStateImplCopyWith<_$LoginViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
