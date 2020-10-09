part of 'watch_homeworks_bloc.dart';

@freezed
abstract class WatchHomeworksState with _$WatchHomeworksState {
  const factory WatchHomeworksState.initial() = _Initial;
  const factory WatchHomeworksState.homeworksError(HomeworkFailure failure) =
      _HomeworksError;
  const factory WatchHomeworksState.homeworksSuccess(
      List<HomeworkItem> homeworks) = _HomeworksSuccess;
}
