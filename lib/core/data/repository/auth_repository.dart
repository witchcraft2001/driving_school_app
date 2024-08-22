// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/data_source/auth_data_source.dart';
import 'package:planny/core/domain/entity/access_token_entity.dart';
import 'package:planny/core/domain/mapper/access_token_mapper.dart';

@injectable
class AuthRepository {
  final AuthDataSource _dataSource;

  AuthRepository(this._dataSource);

  Future<AccessTokenEntity> login(String email, String password) async =>
      (await _dataSource.login(email, password)).toDomain();
}
