// Project imports:
import 'package:planny/core/data/model/pagination_response.dart';
import 'package:planny/core/domain/entity/pagination.dart';

extension PaginationMappers on PaginationResponse {
  Pagination toDto() => Pagination(perPage, total, page, totalPages);
}
