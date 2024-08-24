// Project imports:
import 'product_category_entity.dart';

class ProductEntity {
  final int id;
  final String name;
  final ProductCategoryEntity productCategory;

  ProductEntity({
    required this.id,
    required this.name,
    required this.productCategory,
  });
}
