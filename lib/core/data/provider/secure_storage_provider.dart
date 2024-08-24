// Package imports:
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SecureStorageProvider {
  FlutterSecureStorage? _storage;

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  FlutterSecureStorage get secureStorage =>
      _storage ??= FlutterSecureStorage(aOptions: _getAndroidOptions());
}
