// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:planny/core/common/extension/date_time_extensions.dart';
import 'package:planny/core/data/interactor/lessons_interactor.dart';
import 'package:planny/core/data/interactor/user_interactor.dart';
import 'package:planny/core/data/service/log_service.dart';
import 'package:planny/ui/features/home/bloc/home_view_state.dart';
import '../../../../core/data/interactor/selected_school_interactor.dart';

part 'generated/home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SelectedSchoolInteractor _selectedSchoolInteractor;
  final UserInteractor _userInteractor;
  final LogService _logService;
  final LessonsInteractor _lessonsInteractor;

  HomeBloc(
    this._selectedSchoolInteractor,
    this._userInteractor,
    this._logService,
    this._lessonsInteractor,
  ) : super(const HomeState.initial()) {
    on<_Started>((event, emit) => _init(emit));
    on<_OnDateSelected>((event, emit) async => await _onUpdateDate(event.date, emit));
  }

  void _init(Emitter<HomeState> emit) {
    _updateState(_getViewState(), emit);
  }

  void _updateState(HomeViewState viewState, Emitter<HomeState> emit) {
    emit(HomeState.show(viewState));
  }

  HomeViewState _getViewState() {
    return (state is _Show)
        ? (state as _Show).viewState
        : HomeViewState(
            school: _selectedSchoolInteractor.get()!,
            user: _userInteractor.user!,
            date: DateTime.now(),
          );
  }

  Future<void> _onUpdateDate(DateTime date, Emitter<HomeState> emit) async {
    _updateState(
      _getViewState().copyWith(date: date, lessons: List.empty(), isLoading: true),
      emit,
    );
    try {
      final result = await _lessonsInteractor.getMyLessons(_getViewState().date);
      final items = result.items;
      _updateState(
        _getViewState().copyWith(
          lessons: items,
          isLoading: false,
          error: null,
          page: 1,
          totalPages: result.pagination?.totalPages ?? 0,
        ),
        emit,
      );
    } catch (e, stack) {
      _logService.recordError(e, stack);
      _updateState(
        _getViewState().copyWith(lessons: List.empty(), isLoading: false, error: e.toString()),
        emit,
      );
    }
  }
}
