// Project imports:
import 'package:planny/ui/features/schools/data/model/school_response.dart';
import 'package:planny/ui/features/schools/domain/entity/school_entity.dart';

extension SchoolEntityMapper on SchoolEntity {
  SchoolResponse toResponse() => SchoolResponse(
        id,
        domain,
        url,
        name,
        status,
      );
}
