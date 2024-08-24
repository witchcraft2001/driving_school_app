// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/repository/auth_repository.dart';
import 'package:planny/core/data/repository/settings_repository.dart';

@lazySingleton
class AuthInteractor {
  final AuthRepository _repository;
  final SettingsRepository _settingsRepository;
  String? _accessToken;

  AuthInteractor(this._repository, this._settingsRepository);

  Future<bool> login(String email, String password) async {
    final result = await _repository.login(email, password);
    _accessToken = result.accessToken;
    await _settingsRepository.setRefreshToken(result.refreshToken);

    return true;
  }

  Future<String> refreshToken() async {
    final result = await _repository.refreshToken();
    _accessToken = result;

    return result;
  }

  Future<bool> isUserAuthorized() async {
    final school = _settingsRepository.getSelectedSchool();
    final refreshToken = await _settingsRepository.getRefreshToken();

    return school != null && refreshToken != null;
  }

  Future<void> removeToken() => _settingsRepository.removeRefreshToken();

  String? get accessToken => _accessToken;
}
