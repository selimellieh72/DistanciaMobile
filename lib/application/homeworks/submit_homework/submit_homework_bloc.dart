import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:edulb/domain/homeworks/homework_failures.dart';
import 'package:edulb/domain/homeworks/i_homework_repository.dart';
import 'package:edulb/domain/homeworks/unsubmited_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_homework_event.dart';
part 'submit_homework_state.dart';
part 'submit_homework_bloc.freezed.dart';

@injectable
class SubmitHomeworkBloc
    extends Bloc<SubmitHomeworkEvent, SubmitHomeworkState> {
  final IHomeworksRepository _iHomeworksRepository;
  SubmitHomeworkBloc(this._iHomeworksRepository) : super(_Initial());

  @override
  Stream<SubmitHomeworkState> mapEventToState(
    SubmitHomeworkEvent event,
  ) async* {
    yield* event.map(homeworkToSubmitAdded: (e) async* {
      yield SubmitHomeworkState.toSubmitHomework(e.homework);
    }, submitHomework: (e) async* {
      yield SubmitHomeworkState.submittingHomework();
      final _submitResult = await _iHomeworksRepository.submitHomework(
        homeworkId: e.homeworkId,
        gradeId: e.gradeId,
        file: state.maybeMap(
          toSubmitHomework: (s) => s.homework,
          orElse: () => throw UnSubmitedError(),
        ),
      );
      yield _submitResult.fold(
        (failure) => SubmitHomeworkState.errorSubmit(failure),
        (_) => SubmitHomeworkState.successSubmit(),
      );
    });
  }
}
