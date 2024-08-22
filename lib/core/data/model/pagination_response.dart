// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/pagination_response.g.dart';

@JsonSerializable(createToJson: false)
class PaginationResponse {
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'total')
  final int? total;
  @JsonKey(name: 'current_page')
  final int? page;
  @JsonKey(name: 'last_page')
  final int? totalPages;

  PaginationResponse(this.perPage, this.total, this.page, this.totalPages);

  factory PaginationResponse.fromJson(Map<String, dynamic> json) => _$PaginationResponseFromJson(json);
}
