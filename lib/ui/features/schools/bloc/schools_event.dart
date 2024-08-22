part of 'schools_bloc.dart';

@freezed
class SchoolsEvent with _$SchoolsEvent {
  const factory SchoolsEvent.started() = _Started;
  const factory SchoolsEvent.onNameChanged(String name) = _OnNameChanged;
  const factory SchoolsEvent.onSearchClicked() = _OnSearchClicked;
  const factory SchoolsEvent.onResetSchool() = _OnResetSchool;
  const factory SchoolsEvent.onSchoolSelected(SchoolEntity school) = _OnSchoolSelected;
}
