// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/repository/lessons_repository.dart';
import 'package:planny/core/domain/entity/lesson_entity.dart';
import 'package:planny/core/domain/entity/paginated_list.dart';

@injectable
class LessonsInteractor {
  final LessonsRepository _repository;

  LessonsInteractor(this._repository);

  Future<PaginatedList<LessonEntity>> getMyLessons(
    DateTime date, {
    int page = 1,
    int pageLength = 20,
  }) =>
      _repository.getMyLessons(date, page: page, pageLength: pageLength);
}
