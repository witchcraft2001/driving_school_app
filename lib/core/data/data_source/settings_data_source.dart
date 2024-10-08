// Package imports:
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SettingsDataSource {
  final SharedPreferences _prefs;

  SettingsDataSource(this._prefs);

  bool? getBool(String parameter) {
    return _prefs.getBool(parameter);
  }

  Future<bool> setBool(String parameter, bool value) async {
    return _prefs.setBool(parameter, value);
  }

  String? getString(String parameter) {
    return _prefs.getString(parameter);
  }

  Future<bool> setString(String parameter, String value) async {
    return _prefs.setString(parameter, value);
  }

  Future<bool> removeKey(String key) async {
    return _prefs.remove(key);
  }
}

class SettingsRepositoryKeys {
  static const String user = 'user';
  static const String school = 'school';
  static const String refreshToken = 'refresh_token';
}
