// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/repository/user_repository.dart';
import 'package:planny/core/domain/entity/user_entity.dart';

@lazySingleton
class UserInteractor {
  final UserRepository _repository;
  UserEntity? _user;

  UserInteractor(this._repository);

  Future<UserEntity> getMe() async {
    final result = await _repository.getMe();
    _user = result;
    return result;
  }

  UserEntity? get user => _user;
}
