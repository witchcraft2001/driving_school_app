// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:planny/core/domain/entity/lesson_entity.dart';
import 'package:planny/core/domain/entity/user_entity.dart';
import '../../schools/domain/entity/school_entity.dart';

part 'generated/home_view_state.freezed.dart';

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    @Default(false) bool isLoading,
    required SchoolEntity school,
    required UserEntity user,
    required DateTime date,
    @Default(null) String? error,
    @Default([]) List<LessonEntity> lessons,
    @Default(1) int page,
    @Default(1) int totalPages,
  }) = _HomeViewState;
}
