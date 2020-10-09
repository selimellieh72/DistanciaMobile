part of 'submit_homework_bloc.dart';

@freezed
abstract class SubmitHomeworkState with _$SubmitHomeworkState {
  const factory SubmitHomeworkState.initial() = _Initial;
  const factory SubmitHomeworkState.toSubmitHomework(File homework) =
      _ToSubmitHomework;
  const factory SubmitHomeworkState.submittingHomework() = _SubmittingHomework;
  const factory SubmitHomeworkState.successSubmit() = _SuccessSubmit;
  const factory SubmitHomeworkState.errorSubmit(HomeworkFailure failure) =
      _ErrorSubmit;
}
