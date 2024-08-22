// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../home_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  SchoolEntity get school => throw _privateConstructorUsedError;
  UserEntity get user => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<LessonEntity> get lessons => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res, HomeViewState>;
  @useResult
  $Res call(
      {bool isLoading,
      SchoolEntity school,
      UserEntity user,
      DateTime date,
      String? error,
      List<LessonEntity> lessons,
      int page,
      int totalPages});
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? school = null,
    Object? user = null,
    Object? date = null,
    Object? error = freezed,
    Object? lessons = null,
    Object? page = null,
    Object? totalPages = null,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonEntity>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeViewStateImplCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$$HomeViewStateImplCopyWith(
          _$HomeViewStateImpl value, $Res Function(_$HomeViewStateImpl) then) =
      __$$HomeViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      SchoolEntity school,
      UserEntity user,
      DateTime date,
      String? error,
      List<LessonEntity> lessons,
      int page,
      int totalPages});
}

/// @nodoc
class __$$HomeViewStateImplCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$HomeViewStateImpl>
    implements _$$HomeViewStateImplCopyWith<$Res> {
  __$$HomeViewStateImplCopyWithImpl(
      _$HomeViewStateImpl _value, $Res Function(_$HomeViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? school = null,
    Object? user = null,
    Object? date = null,
    Object? error = freezed,
    Object? lessons = null,
    Object? page = null,
    Object? totalPages = null,
  }) {
    return _then(_$HomeViewStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SchoolEntity,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonEntity>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeViewStateImpl implements _HomeViewState {
  const _$HomeViewStateImpl(
      {this.isLoading = false,
      required this.school,
      required this.user,
      required this.date,
      this.error = null,
      final List<LessonEntity> lessons = const [],
      this.page = 1,
      this.totalPages = 1})
      : _lessons = lessons;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final SchoolEntity school;
  @override
  final UserEntity user;
  @override
  final DateTime date;
  @override
  @JsonKey()
  final String? error;
  final List<LessonEntity> _lessons;
  @override
  @JsonKey()
  List<LessonEntity> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int totalPages;

  @override
  String toString() {
    return 'HomeViewState(isLoading: $isLoading, school: $school, user: $user, date: $date, error: $error, lessons: $lessons, page: $page, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, school, user, date,
      error, const DeepCollectionEquality().hash(_lessons), page, totalPages);

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      __$$HomeViewStateImplCopyWithImpl<_$HomeViewStateImpl>(this, _$identity);
}

abstract class _HomeViewState implements HomeViewState {
  const factory _HomeViewState(
      {final bool isLoading,
      required final SchoolEntity school,
      required final UserEntity user,
      required final DateTime date,
      final String? error,
      final List<LessonEntity> lessons,
      final int page,
      final int totalPages}) = _$HomeViewStateImpl;

  @override
  bool get isLoading;
  @override
  SchoolEntity get school;
  @override
  UserEntity get user;
  @override
  DateTime get date;
  @override
  String? get error;
  @override
  List<LessonEntity> get lessons;
  @override
  int get page;
  @override
  int get totalPages;

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
