// Project imports:
import 'package:planny/core/data/model/product_category_response.dart';
import 'package:planny/core/domain/entity/product_category_entity.dart';

extension ProductCategoryResponseMapper on ProductCategoryResponse {
  ProductCategoryEntity toDomain() => ProductCategoryEntity(
        id: id,
        name: name,
        iconUrl: iconUrl,
        description: description,
      );
}
