import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:edulb/domain/homeworks/homework_failures.dart';
import 'package:edulb/domain/homeworks/i_homework_repository.dart';
import 'package:edulb/domain/homeworks/submit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_submits_event.dart';
part 'fetch_submits_state.dart';
part 'fetch_submits_bloc.freezed.dart';

@injectable
class FetchSubmitsBloc extends Bloc<FetchSubmitsEvent, FetchSubmitsState> {
  final IHomeworksRepository _iHomeworksRepository;
  FetchSubmitsBloc(this._iHomeworksRepository) : super(_Initial());

  @override
  Stream<FetchSubmitsState> mapEventToState(
    FetchSubmitsEvent event,
  ) async* {
    yield* event.map(
      fetchSubmitsStarted: (e) async* {
        yield FetchSubmitsState.submitsLoading();
        final _supposedSubmits = await _iHomeworksRepository.getHomeworkSubmits(
            homeworkId: e.homeworkId, gradeId: e.gradeId);
        yield _supposedSubmits.fold(
            (failure) => FetchSubmitsState.submitsError(failure: failure),
            (submits) => FetchSubmitsState.submitsSuccess(submits));
      },
    );
  }
}
