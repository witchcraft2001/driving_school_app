// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/common/exception/repository_exception.dart';
import 'package:planny/core/data/service/http_service.dart';
import 'package:planny/core/data/service/log_service.dart';
import 'package:planny/ui/features/schools/data/model/school_response.dart';
import 'package:planny/ui/features/schools/data/service/schools_api_service.dart';

@injectable
class SchoolsDataSource {
  final SchoolsApiService _apiService;
  final LogService _logService;

  SchoolsDataSource(this._apiService, this._logService);

  Future<List<SchoolResponse>> searchByName(String name) async {
    try {
      final response = await _apiService.request(
        url: 'api/driving-school',
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        final List<SchoolResponse> items =
            List.from(response.data).map((item) => SchoolResponse.fromJson(item)).toList();

        return items;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
