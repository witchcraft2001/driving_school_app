part of 'schools_bloc.dart';

@freezed
class SchoolsState with _$SchoolsState {
  const factory SchoolsState.show({
    required String name,
    required bool isLoading,
    String? error,
    required List<SchoolEntity> schools,
  }) = _Show;
}
