// Project imports:
import 'package:planny/core/data/model/instructor_response.dart';
import 'package:planny/core/domain/entity/instructor_entity.dart';

extension InstructorResponseMapper on InstructorResponse {
  InstructorEntity toDomain() => InstructorEntity(id: id, name: name, avatar: avatar);
}
