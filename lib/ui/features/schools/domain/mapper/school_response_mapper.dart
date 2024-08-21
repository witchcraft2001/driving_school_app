// Project imports:
import 'package:planny/ui/features/schools/data/model/school_response.dart';
import 'package:planny/ui/features/schools/domain/entity/school_entity.dart';

extension SchoolReponseMapper on SchoolResponse {
  SchoolEntity toDomain() => SchoolEntity(
        id: id,
        domain: domain,
        url: url,
        name: name,
        status: status,
      );
}
