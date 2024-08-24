// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/provider/secure_storage_provider.dart';

@lazySingleton
class SecureSettingsDataSource {
  final SecureStorageProvider _provider;

  SecureSettingsDataSource(this._provider);

  Future<String?> getString(String parameter) async {
    try {
      return await _provider.secureStorage.read(key: parameter);
    } catch (e, stack) {
      return null;
    }
  }

  Future<void> setString(String parameter, String value) async {
    try {
      await _provider.secureStorage.write(key: parameter, value: value);
    } catch (e, stack) {
      return;
    }
  }

  Future<void> removeKey(String key) async {
    try {
      await _provider.secureStorage.delete(key: key);
    } catch (e, stack) {
      return;
    }
  }
}
