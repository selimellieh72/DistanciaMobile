part of 'grades_bloc.dart';

@freezed
abstract class GradesEvent with _$GradesEvent {
  const factory GradesEvent.watchGradesStarted() = _WatchGradesStarted;
}
