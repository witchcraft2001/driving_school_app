// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../schools_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchoolsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function() onSearchClicked,
    required TResult Function() onResetSchool,
    required TResult Function(SchoolEntity school) onSchoolSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? onSearchClicked,
    TResult? Function()? onResetSchool,
    TResult? Function(SchoolEntity school)? onSchoolSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function()? onSearchClicked,
    TResult Function()? onResetSchool,
    TResult Function(SchoolEntity school)? onSchoolSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnSearchClicked value) onSearchClicked,
    required TResult Function(_OnResetSchool value) onResetSchool,
    required TResult Function(_OnSchoolSelected value) onSchoolSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnSearchClicked value)? onSearchClicked,
    TResult? Function(_OnResetSchool value)? onResetSchool,
    TResult? Function(_OnSchoolSelected value)? onSchoolSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnSearchClicked value)? onSearchClicked,
    TResult Function(_OnResetSchool value)? onResetSchool,
    TResult Function(_OnSchoolSelected value)? onSchoolSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolsEventCopyWith<$Res> {
  factory $SchoolsEventCopyWith(
          SchoolsEvent value, $Res Function(SchoolsEvent) then) =
      _$SchoolsEventCopyWithImpl<$Res, SchoolsEvent>;
}

/// @nodoc
class _$SchoolsEventCopyWithImpl<$Res, $Val extends SchoolsEvent>
    implements $SchoolsEventCopyWith<$Res> {
  _$SchoolsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchoolsEvent
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
    extends _$SchoolsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchoolsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SchoolsEvent.started()';
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
    required TResult Function(String name) onNameChanged,
    required TResult Function() onSearchClicked,
    required TResult Function() onResetSchool,
    required TResult Function(SchoolEntity school) onSchoolSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? onSearchClicked,
    TResult? Function()? onResetSchool,
    TResult? Function(SchoolEntity school)? onSchoolSelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function()? onSearchClicked,
    TResult Function()? onResetSchool,
    TResult Function(SchoolEntity school)? onSchoolSelected,
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
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnSearchClicked value) onSearchClicked,
    required TResult Function(_OnResetSchool value) onResetSchool,
    required TResult Function(_OnSchoolSelected value) onSchoolSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnSearchClicked value)? onSearchClicked,
    TResult? Function(_OnResetSchool value)? onResetSchool,
    TResult? Function(_OnSchoolSelected value)? onSchoolSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnSearchClicked value)? onSearchClicked,
    TResult Function(_OnResetSchool value)? onResetSchool,
    TResult Function(_OnSchoolSelected value)? onSchoolSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SchoolsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnNameChangedImplCopyWith<$Res> {
  factory _$$OnNameChangedImplCopyWith(
          _$OnNameChangedImpl value, $Res Function(_$OnNameChangedImpl) then) =
      __$$OnNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$OnNameChangedImplCopyWithImpl<$Res>
    extends _$SchoolsEventCopyWithImpl<$Res, _$OnNameChangedImpl>
    implements _$$OnNameChangedImplCopyWith<$Res> {
  __$$OnNameChangedImplCopyWithImpl(
      _$OnNameChangedImpl _value, $Res Function(_$OnNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchoolsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$OnNameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnNameChangedImpl implements _OnNameChanged {
  const _$OnNameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SchoolsEvent.onNameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of SchoolsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNameChangedImplCopyWith<_$OnNameChangedImpl> get copyWith =>
      __$$OnNameChangedImplCopyWithImpl<_$OnNameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function() onSearchClicked,
    required TResult Function() onResetSchool,
    required TResult Function(SchoolEntity school) onSchoolSelected,
  }) {
    return onNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? onSearchClicked,
    TResult? Function()? onResetSchool,
    TResult? Function(SchoolEntity school)? onSchoolSelected,
  }) {
    return onNameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function()? onSearchClicked,
    TResult Function()? onResetSchool,
    TResult Function(SchoolEntity school)? onSchoolSelected,
    required TResult orElse(),
  }) {
    if (onNameChanged != null) {
      return onNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnSearchClicked value) onSearchClicked,
    required TResult Function(_OnResetSchool value) onResetSchool,
    required TResult Function(_OnSchoolSelected value) onSchoolSelected,
  }) {
    return onNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnSearchClicked value)? onSearchClicked,
    TResult? Function(_OnResetSchool value)? onResetSchool,
    TResult? Function(_OnSchoolSelected value)? onSchoolSelected,
  }) {
    return onNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnSearchClicked value)? onSearchClicked,
    TResult Function(_OnResetSchool value)? onResetSchool,
    TResult Function(_OnSchoolSelected value)? onSchoolSelected,
    required TResult orElse(),
  }) {
    if (onNameChanged != null) {
      return onNameChanged(this);
    }
    return orElse();
  }
}

abstract class _OnNameChanged implements SchoolsEvent {
  const factory _OnNameChanged(final String name) = _$OnNameChangedImpl;

  String get name;

  /// Create a copy of SchoolsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNameChangedImplCopyWith<_$OnNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSearchClickedImplCopyWith<$Res> {
  factory _$$OnSearchClickedImplCopyWith(_$OnSearchClickedImpl value,
          $Res Function(_$OnSearchClickedImpl) then) =
      __$$OnSearchClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSearchClickedImplCopyWithImpl<$Res>
    extends _$SchoolsEventCopyWithImpl<$Res, _$OnSearchClickedImpl>
    implements _$$OnSearchClickedImplCopyWith<$Res> {
  __$$OnSearchClickedImplCopyWithImpl(
      _$OnSearchClickedImpl _value, $Res Function(_$OnSearchClickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchoolsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSearchClickedImpl implements _OnSearchClicked {
  const _$OnSearchClickedImpl();

  @override
  String toString() {
    return 'SchoolsEvent.onSearchClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSearchClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function() onSearchClicked,
    required TResult Function() onResetSchool,
    required TResult Function(SchoolEntity school) onSchoolSelected,
  }) {
    return onSearchClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? onSearchClicked,
    TResult? Function()? onResetSchool,
    TResult? Function(SchoolEntity school)? onSchoolSelected,
  }) {
    return onSearchClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function()? onSearchClicked,
    TResult Function()? onResetSchool,
    TResult Function(SchoolEntity school)? onSchoolSelected,
    required TResult orElse(),
  }) {
    if (onSearchClicked != null) {
      return onSearchClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnSearchClicked value) onSearchClicked,
    required TResult Function(_OnResetSchool value) onResetSchool,
    required TResult Function(_OnSchoolSelected value) onSchoolSelected,
  }) {
    return onSearchClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnSearchClicked value)? onSearchClicked,
    TResult? Function(_OnResetSchool value)? onResetSchool,
    TResult? Function(_OnSchoolSelected value)? onSchoolSelected,
  }) {
    return onSearchClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnSearchClicked value)? onSearchClicked,
    TResult Function(_OnResetSchool value)? onResetSchool,
    TResult Function(_OnSchoolSelected value)? onSchoolSelected,
    required TResult orElse(),
  }) {
    if (onSearchClicked != null) {
      return onSearchClicked(this);
    }
    return orElse();
  }
}

abstract class _OnSearchClicked implements SchoolsEvent {
  const factory _OnSearchClicked() = _$OnSearchClickedImpl;
}

/// @nodoc
abstract class _$$OnResetSchoolImplCopyWith<$Res> {
  factory _$$OnResetSchoolImplCopyWith(
          _$OnResetSchoolImpl value, $Res Function(_$OnResetSchoolImpl) then) =
      __$$OnResetSchoolImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnResetSchoolImplCopyWithImpl<$Res>
    extends _$SchoolsEventCopyWithImpl<$Res, _$OnResetSchoolImpl>
    implements _$$OnResetSchoolImplCopyWith<$Res> {
  __$$OnResetSchoolImplCopyWithImpl(
      _$OnResetSchoolImpl _value, $Res Function(_$OnResetSchoolImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchoolsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnResetSchoolImpl implements _OnResetSchool {
  const _$OnResetSchoolImpl();

  @override
  String toString() {
    return 'SchoolsEvent.onResetSchool()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnResetSchoolImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function() onSearchClicked,
    required TResult Function() onResetSchool,
    required TResult Function(SchoolEntity school) onSchoolSelected,
  }) {
    return onResetSchool();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? onSearchClicked,
    TResult? Function()? onResetSchool,
    TResult? Function(SchoolEntity school)? onSchoolSelected,
  }) {
    return onResetSchool?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function()? onSearchClicked,
    TResult Function()? onResetSchool,
    TResult Function(SchoolEntity school)? onSchoolSelected,
    required TResult orElse(),
  }) {
    if (onResetSchool != null) {
      return onResetSchool();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnSearchClicked value) onSearchClicked,
    required TResult Function(_OnResetSchool value) onResetSchool,
    required TResult Function(_OnSchoolSelected value) onSchoolSelected,
  }) {
    return onResetSchool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnSearchClicked value)? onSearchClicked,
    TResult? Function(_OnResetSchool value)? onResetSchool,
    TResult? Function(_OnSchoolSelected value)? onSchoolSelected,
  }) {
    return onResetSchool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnSearchClicked value)? onSearchClicked,
    TResult Function(_OnResetSchool value)? onResetSchool,
    TResult Function(_OnSchoolSelected value)? onSchoolSelected,
    required TResult orElse(),
  }) {
    if (onResetSchool != null) {
      return onResetSchool(this);
    }
    return orElse();
  }
}

abstract class _OnResetSchool implements SchoolsEvent {
  const factory _OnResetSchool() = _$OnResetSchoolImpl;
}

/// @nodoc
abstract class _$$OnSchoolSelectedImplCopyWith<$Res> {
  factory _$$OnSchoolSelectedImplCopyWith(_$OnSchoolSelectedImpl value,
          $Res Function(_$OnSchoolSelectedImpl) then) =
      __$$OnSchoolSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SchoolEntity school});
}

/// @nodoc
class __$$OnSchoolSelectedImplCopyWithImpl<$Res>
    extends _$SchoolsEventCopyWithImpl<$Res, _$OnSchoolSelectedImpl>
    implements _$$OnSchoolSelectedImplCopyWith<$Res> {
  __$$OnSchoolSelectedImplCopyWithImpl(_$OnSchoolSelectedImpl _value,
      $Res Function(_$OnSchoolSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchoolsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? school = null,
  }) {
    return _then(_$OnSchoolSelectedImpl(
      null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolEntity,
    ));
  }
}

/// @nodoc

class _$OnSchoolSelectedImpl implements _OnSchoolSelected {
  const _$OnSchoolSelectedImpl(this.school);

  @override
  final SchoolEntity school;

  @override
  String toString() {
    return 'SchoolsEvent.onSchoolSelected(school: $school)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSchoolSelectedImpl &&
            (identical(other.school, school) || other.school == school));
  }

  @override
  int get hashCode => Object.hash(runtimeType, school);

  /// Create a copy of SchoolsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSchoolSelectedImplCopyWith<_$OnSchoolSelectedImpl> get copyWith =>
      __$$OnSchoolSelectedImplCopyWithImpl<_$OnSchoolSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function() onSearchClicked,
    required TResult Function() onResetSchool,
    required TResult Function(SchoolEntity school) onSchoolSelected,
  }) {
    return onSchoolSelected(school);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function()? onSearchClicked,
    TResult? Function()? onResetSchool,
    TResult? Function(SchoolEntity school)? onSchoolSelected,
  }) {
    return onSchoolSelected?.call(school);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function()? onSearchClicked,
    TResult Function()? onResetSchool,
    TResult Function(SchoolEntity school)? onSchoolSelected,
    required TResult orElse(),
  }) {
    if (onSchoolSelected != null) {
      return onSchoolSelected(school);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnSearchClicked value) onSearchClicked,
    required TResult Function(_OnResetSchool value) onResetSchool,
    required TResult Function(_OnSchoolSelected value) onSchoolSelected,
  }) {
    return onSchoolSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnSearchClicked value)? onSearchClicked,
    TResult? Function(_OnResetSchool value)? onResetSchool,
    TResult? Function(_OnSchoolSelected value)? onSchoolSelected,
  }) {
    return onSchoolSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnSearchClicked value)? onSearchClicked,
    TResult Function(_OnResetSchool value)? onResetSchool,
    TResult Function(_OnSchoolSelected value)? onSchoolSelected,
    required TResult orElse(),
  }) {
    if (onSchoolSelected != null) {
      return onSchoolSelected(this);
    }
    return orElse();
  }
}

abstract class _OnSchoolSelected implements SchoolsEvent {
  const factory _OnSchoolSelected(final SchoolEntity school) =
      _$OnSchoolSelectedImpl;

  SchoolEntity get school;

  /// Create a copy of SchoolsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSchoolSelectedImplCopyWith<_$OnSchoolSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchoolsState {
  String get name => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<SchoolEntity> get schools => throw _privateConstructorUsedError;
  SchoolEntity? get selectedSchool => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isLoading, String? error,
            List<SchoolEntity> schools, SchoolEntity? selectedSchool)
        show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, bool isLoading, String? error,
            List<SchoolEntity> schools, SchoolEntity? selectedSchool)?
        show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isLoading, String? error,
            List<SchoolEntity> schools, SchoolEntity? selectedSchool)?
        show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Show value) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Show value)? show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Show value)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SchoolsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchoolsStateCopyWith<SchoolsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolsStateCopyWith<$Res> {
  factory $SchoolsStateCopyWith(
          SchoolsState value, $Res Function(SchoolsState) then) =
      _$SchoolsStateCopyWithImpl<$Res, SchoolsState>;
  @useResult
  $Res call(
      {String name,
      bool isLoading,
      String? error,
      List<SchoolEntity> schools,
      SchoolEntity? selectedSchool});
}

/// @nodoc
class _$SchoolsStateCopyWithImpl<$Res, $Val extends SchoolsState>
    implements $SchoolsStateCopyWith<$Res> {
  _$SchoolsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchoolsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? schools = null,
    Object? selectedSchool = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      schools: null == schools
          ? _value.schools
          : schools // ignore: cast_nullable_to_non_nullable
              as List<SchoolEntity>,
      selectedSchool: freezed == selectedSchool
          ? _value.selectedSchool
          : selectedSchool // ignore: cast_nullable_to_non_nullable
              as SchoolEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowImplCopyWith<$Res>
    implements $SchoolsStateCopyWith<$Res> {
  factory _$$ShowImplCopyWith(
          _$ShowImpl value, $Res Function(_$ShowImpl) then) =
      __$$ShowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool isLoading,
      String? error,
      List<SchoolEntity> schools,
      SchoolEntity? selectedSchool});
}

/// @nodoc
class __$$ShowImplCopyWithImpl<$Res>
    extends _$SchoolsStateCopyWithImpl<$Res, _$ShowImpl>
    implements _$$ShowImplCopyWith<$Res> {
  __$$ShowImplCopyWithImpl(_$ShowImpl _value, $Res Function(_$ShowImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchoolsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? schools = null,
    Object? selectedSchool = freezed,
  }) {
    return _then(_$ShowImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      schools: null == schools
          ? _value._schools
          : schools // ignore: cast_nullable_to_non_nullable
              as List<SchoolEntity>,
      selectedSchool: freezed == selectedSchool
          ? _value.selectedSchool
          : selectedSchool // ignore: cast_nullable_to_non_nullable
              as SchoolEntity?,
    ));
  }
}

/// @nodoc

class _$ShowImpl implements _Show {
  const _$ShowImpl(
      {required this.name,
      required this.isLoading,
      this.error,
      required final List<SchoolEntity> schools,
      this.selectedSchool})
      : _schools = schools;

  @override
  final String name;
  @override
  final bool isLoading;
  @override
  final String? error;
  final List<SchoolEntity> _schools;
  @override
  List<SchoolEntity> get schools {
    if (_schools is EqualUnmodifiableListView) return _schools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schools);
  }

  @override
  final SchoolEntity? selectedSchool;

  @override
  String toString() {
    return 'SchoolsState.show(name: $name, isLoading: $isLoading, error: $error, schools: $schools, selectedSchool: $selectedSchool)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._schools, _schools) &&
            (identical(other.selectedSchool, selectedSchool) ||
                other.selectedSchool == selectedSchool));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isLoading, error,
      const DeepCollectionEquality().hash(_schools), selectedSchool);

  /// Create a copy of SchoolsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowImplCopyWith<_$ShowImpl> get copyWith =>
      __$$ShowImplCopyWithImpl<_$ShowImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isLoading, String? error,
            List<SchoolEntity> schools, SchoolEntity? selectedSchool)
        show,
  }) {
    return show(name, isLoading, error, schools, selectedSchool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, bool isLoading, String? error,
            List<SchoolEntity> schools, SchoolEntity? selectedSchool)?
        show,
  }) {
    return show?.call(name, isLoading, error, schools, selectedSchool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isLoading, String? error,
            List<SchoolEntity> schools, SchoolEntity? selectedSchool)?
        show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(name, isLoading, error, schools, selectedSchool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Show value) show,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Show value)? show,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Show value)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class _Show implements SchoolsState {
  const factory _Show(
      {required final String name,
      required final bool isLoading,
      final String? error,
      required final List<SchoolEntity> schools,
      final SchoolEntity? selectedSchool}) = _$ShowImpl;

  @override
  String get name;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  List<SchoolEntity> get schools;
  @override
  SchoolEntity? get selectedSchool;

  /// Create a copy of SchoolsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowImplCopyWith<_$ShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
