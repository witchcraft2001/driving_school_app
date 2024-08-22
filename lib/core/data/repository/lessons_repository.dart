// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/data_source/lessons_data_source.dart';
import 'package:planny/core/data/service/log_service.dart';
import 'package:planny/core/domain/entity/lesson_entity.dart';
import 'package:planny/core/domain/entity/paginated_list.dart';
import 'package:planny/core/domain/mapper/lesson_response_mapper.dart';

@injectable
class LessonsRepository {
  final LessonsDataSource _dataSource;
  final LogService _logService;

  LessonsRepository(this._dataSource, this._logService);

  Future<PaginatedList<LessonEntity>> getMyLessons(
    DateTime date, {
    int page = 1,
    int pageLength = 20,
  }) async {
    try {
      final result = await _dataSource.getMyLessons(date, page: page, pageLength: pageLength);
      return PaginatedList(
        items: result.payloadResponse?.map((e) => e.toDomain()).toList(growable: false) ?? [],
      );
    } catch (e, stack) {
      _logService.recordError(e, stack);
      rethrow;
    }
  }
}
