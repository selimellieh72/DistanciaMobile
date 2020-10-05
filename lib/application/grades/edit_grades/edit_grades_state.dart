part of 'edit_grades_bloc.dart';

@freezed
abstract class EditGradesState with _$EditGradesState {
  const factory EditGradesState.gradeNotEdit() = _GradeNotEdit;
  const factory EditGradesState.gradeEdit({
    @required List<String> editedGradesIds,
  }) = _GradeEdit;
  const factory EditGradesState.gradeLoading() = _GradeLoading;
  const factory EditGradesState.gradeError(
      {@required GradeFailure gradeFailure}) = _GradeError;
}
