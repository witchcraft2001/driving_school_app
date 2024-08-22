// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/common/exception/repository_exception.dart';
import 'package:planny/core/common/extension/date_time_extensions.dart';
import 'package:planny/core/data/model/lesson_response.dart';
import 'package:planny/core/data/service/http_service.dart';
import 'package:planny/core/data/service/log_service.dart';
import 'package:planny/core/data/service/student_api_service.dart';

@injectable
class LessonsDataSource {
  final StudentApiService _apiService;
  final LogService _logService;

  LessonsDataSource(this._apiService, this._logService);

  Future<LessonListWithPaginationResponse> getMyLessons(
    DateTime date, {
    int page = 1,
    int pageLength = 20,
  }) async {
    try {
      final response = await _apiService.request(
        url: 'api/my-lessons',
        method: Method.GET,
        params: {
          'start_date': date.toApiDateString(),
          'end_date': date.toApiDateString(),
          'page': page.toString(),
          'page_length': pageLength.toString(),
        },
      );

      if (response.statusCode == 200) {
        return LessonListWithPaginationResponse(LessonList.fromMappedJson(response.data).list);
        // return LessonListWithPaginationResponse.fromMappedJson(response.data);
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
