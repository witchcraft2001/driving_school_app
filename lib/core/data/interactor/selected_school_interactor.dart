// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/repository/settings_repository.dart';
import 'package:planny/ui/features/schools/domain/entity/school_entity.dart';

@lazySingleton
class SelectedSchoolInteractor {
  final SettingsRepository _repository;
  SchoolEntity? _school;

  SelectedSchoolInteractor(this._repository);

  SchoolEntity? get() => _school ??= _repository.getSelectedSchool();

  Future<void> set(SchoolEntity school) async {
    _school = school;
    await _repository.setSelectedSchool(school);
  }

  Future<bool> remove() => _repository.removeSelectedSchool();
}
