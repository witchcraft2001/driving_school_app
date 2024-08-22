// Project imports:
import 'pagination.dart';

class PaginatedList<T> {
  final Pagination? pagination;
  final List<T> items;

  PaginatedList({
    required this.items,
    this.pagination,
  });
}
