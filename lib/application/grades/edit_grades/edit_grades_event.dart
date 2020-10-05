part of 'edit_grades_bloc.dart';

@freezed
abstract class EditGradesEvent with _$EditGradesEvent {
  const factory EditGradesEvent.editGradeStarted() = _EditGradeStarted;
  const factory EditGradesEvent.editGradeStopped() = _EditGradeStopped;
  const factory EditGradesEvent.editGradeAddedOrRemoved(String gradeId) =
      _EditGradeAddedOrRemoved;

  const factory EditGradesEvent.gradesRemoved() = _GradesRemoved;
}
