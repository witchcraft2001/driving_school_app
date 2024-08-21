// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/ui/features/schools/data/repository/schools_repository.dart';
import '../entity/school_entity.dart';

@injectable
class SchoolsInteractor {
  final SchoolsRepository _repository;

  SchoolsInteractor(this._repository);

  Future<List<SchoolEntity>> searchByName(String name) => _repository.searchByName(name);
}
