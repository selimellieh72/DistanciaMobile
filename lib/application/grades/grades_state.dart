part of 'grades_bloc.dart';

@freezed
abstract class GradesState with _$GradesState {
  const factory GradesState.initial() = _Initial;
  const factory GradesState.gradesLoaded({
    @required List<GradeItem> grades,
  }) = _GradesLoaded;
  const factory GradesState.gradesError({
    @required GradeFailure gradeFailure,
  }) = _GradesError;
}
