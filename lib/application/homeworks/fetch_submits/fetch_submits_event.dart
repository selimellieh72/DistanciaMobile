part of 'fetch_submits_bloc.dart';

@freezed
abstract class FetchSubmitsEvent with _$FetchSubmitsEvent {
  const factory FetchSubmitsEvent.fetchSubmitsStarted({
    @required String homeworkId,
    @required String gradeId,
  }) = _FetchSubmitsStarted;
}
