part of 'submit_homework_bloc.dart';

@freezed
abstract class SubmitHomeworkEvent with _$SubmitHomeworkEvent {
  const factory SubmitHomeworkEvent.homeworkToSubmitAdded(File homework) =
      _HomeworkToSubmitAdded;
  const factory SubmitHomeworkEvent.submitHomework({
    @required String gradeId,
    @required String homeworkId,
  }) = _SubmitHomework;
}
