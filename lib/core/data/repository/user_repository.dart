// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/domain/entity/user_entity.dart';
import 'package:planny/core/domain/mapper/user_mapper.dart';
import '../data_source/user_data_source.dart';

@injectable
class UserRepository {
  final UserDataSource _dataSource;

  UserRepository(this._dataSource);

  Future<UserEntity> getMe() async => (await _dataSource.getMe()).toDomain();
}
