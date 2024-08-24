// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'product_category_response.dart';

part 'generated/product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'product_category')
  final ProductCategoryResponse productCategory;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

  ProductResponse({
    required this.id,
    required this.name,
    required this.productCategory,
  });

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}
