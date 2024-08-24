// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'generated/product_category_response.g.dart';

@JsonSerializable()
class ProductCategoryResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'icon_url')
  final String iconUrl;
  @JsonKey(name: 'description')
  final String? description;

  factory ProductCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryResponseFromJson(json);

  ProductCategoryResponse({
    required this.id,
    required this.name,
    required this.iconUrl,
    required this.description,
  });

  Map<String, dynamic> toJson() => _$ProductCategoryResponseToJson(this);
}
