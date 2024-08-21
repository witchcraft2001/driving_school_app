// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/common/extension/iterable_extensions.dart';
import 'package:planny/ui/features/schools/data/data_source/schools_data_source.dart';
import 'package:planny/ui/features/schools/domain/entity/school_entity.dart';
import 'package:planny/ui/features/schools/domain/mapper/school_response_mapper.dart';

@lazySingleton
class SchoolsRepository {
  final SchoolsDataSource _dataSource;

  SchoolsRepository(this._dataSource);

  Future<List<SchoolEntity>> searchByName(String name) async =>
      (await _dataSource.searchByName(name)).map((e) => e.toDomain()).toImmutableList();
}
