// Project imports:
import 'package:planny/core/data/model/product_response.dart';
import 'package:planny/core/domain/entity/product_entity.dart';
import 'package:planny/core/domain/mapper/product_category_response_mapper.dart';

extension ProductResponseMapper on ProductResponse {
  ProductEntity toDomain() => ProductEntity(
        id: id,
        name: name,
        productCategory: productCategory.toDomain(),
      );
}
