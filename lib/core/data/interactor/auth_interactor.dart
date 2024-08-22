// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/repository/auth_repository.dart';
import 'package:planny/core/domain/entity/access_token_entity.dart';

@lazySingleton
class AuthInteractor {
  final AuthRepository _repository;
  String? _accessToken;
  String? _refreshToken;

  AuthInteractor(this._repository);

  Future<AccessTokenEntity> login(String email, String password) async {
    final result = await _repository.login(email, password);
    _accessToken = result.accessToken;
    _refreshToken = result.refreshToken;
    return result;
  }

  String? get accessToken => _accessToken;

  String? get refreshToken => _refreshToken;
}
