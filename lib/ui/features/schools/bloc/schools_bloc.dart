// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/data/service/log_service.dart';
import 'package:planny/ui/features/schools/domain/entity/school_entity.dart';
import 'package:planny/ui/features/schools/domain/interactor/schools_interactor.dart';

part 'generated/schools_bloc.freezed.dart';

part 'schools_event.dart';

part 'schools_state.dart';

@injectable
class SchoolsBloc extends Bloc<SchoolsEvent, SchoolsState> {
  final SchoolsInteractor _schoolsInteractor;
  final LogService _logService;

  SchoolsBloc(
    this._schoolsInteractor,
    this._logService,
  ) : super(const SchoolsState.show(
          name: '',
          isLoading: false,
          error: null,
          schools: [],
        )) {
    on<_OnNameChanged>((event, emit) => emit(state.copyWith(name: event.name)));
  }

  Future<void> _search(Emitter<SchoolsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final result = await _schoolsInteractor.searchByName(state.name);
      emit(state.copyWith(
        isLoading: false,
        schools: result,
        error: null,
      ));
    } catch (e, stack) {
      _logService.recordError(e, stack);
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }
}
