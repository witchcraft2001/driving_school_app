// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/data_source/secure_settings_data_source.dart';
import 'package:planny/core/data/data_source/settings_data_source.dart';
import 'package:planny/core/data/service/log_service.dart';
import 'package:planny/ui/features/schools/data/model/school_response.dart';
import 'package:planny/ui/features/schools/domain/entity/school_entity.dart';
import 'package:planny/ui/features/schools/domain/mapper/school_entity_mapper.dart';
import 'package:planny/ui/features/schools/domain/mapper/school_response_mapper.dart';

@lazySingleton
class SettingsRepository {
  final SettingsDataSource _dataSource;
  final SecureSettingsDataSource _secureSettingsDataSource;
  final LogService _logService;

  SettingsRepository(
    this._dataSource,
    this._logService,
    this._secureSettingsDataSource,
  );

  SchoolEntity? getSelectedSchool() {
    final result = _dataSource.getString(SettingsRepositoryKeys.school);
    try {
      if (result != null) {
        var json = jsonDecode(result);

        return SchoolResponse.fromJson(json).toDomain();
      }
    } catch (e, stack) {
      _logService.recordError(e, stack);
    }
    return null;
  }

  Future<void> setSelectedSchool(SchoolEntity school) async {
    var json = jsonEncode(school.toResponse().toJson());
    await _dataSource.setString(SettingsRepositoryKeys.school, json);
  }

  Future<bool> removeSelectedSchool() => _dataSource.removeKey(SettingsRepositoryKeys.school);

  Future<String?> getRefreshToken() =>
      _secureSettingsDataSource.getString(SettingsRepositoryKeys.refreshToken);

  Future<void> setRefreshToken(String token) =>
      _secureSettingsDataSource.setString(SettingsRepositoryKeys.refreshToken, token);

  Future<void> removeRefreshToken() =>
      _secureSettingsDataSource.removeKey(SettingsRepositoryKeys.refreshToken);
}
