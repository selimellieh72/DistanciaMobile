part of 'fetch_submits_bloc.dart';

@freezed
abstract class FetchSubmitsState with _$FetchSubmitsState {
  const factory FetchSubmitsState.initial() = _Initial;
  const factory FetchSubmitsState.submitsLoading() = _SubmitsLoading;
  const factory FetchSubmitsState.submitsError({
    @required HomeworkFailure failure,
  }) = _SubmitsError;
  const factory FetchSubmitsState.submitsSuccess(List<Submit> submits) =
      _SubmitsSuccess;
}
