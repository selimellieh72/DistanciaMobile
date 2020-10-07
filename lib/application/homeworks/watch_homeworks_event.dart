part of 'watch_homeworks_bloc.dart';

@freezed
abstract class WatchHomeworksEvent with _$WatchHomeworksEvent {
  const factory WatchHomeworksEvent.started() = _Started;
}