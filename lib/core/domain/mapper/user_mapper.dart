// Project imports:
import 'package:planny/core/data/model/user_response.dart';
import 'package:planny/core/domain/entity/user_entity.dart';

extension UserResponseMapper on UserResponse {
  UserEntity toDomain() => UserEntity(
        id: id,
        name: name,
        email: email,
        status: status,
        role: role,
        avatar: avatar,
        transmission: transmission,
      );
}
