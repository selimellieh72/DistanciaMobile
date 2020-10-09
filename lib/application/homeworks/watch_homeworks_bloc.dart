import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:edulb/domain/homeworks/homework_failures.dart';
import 'package:edulb/domain/homeworks/homework_item.dart';
import 'package:edulb/domain/homeworks/i_homework_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'watch_homeworks_event.dart';
part 'watch_homeworks_state.dart';
part 'watch_homeworks_bloc.freezed.dart';

@injectable
class WatchHomeworksBloc
    extends Bloc<WatchHomeworksEvent, WatchHomeworksState> {
  final IHomeworksRepository _iHomeworksRepository;

  WatchHomeworksBloc(this._iHomeworksRepository) : super(_Initial());

  @override
  Stream<WatchHomeworksState> mapEventToState(
    WatchHomeworksEvent event,
  ) async* {
    yield* event.map(watchHomeworksStarted: (e) async* {
      final _supposedHomeworks = _iHomeworksRepository
          .watchHomeworksForGradeOrUser(gradeId: optionOf(e.gradeId));

      yield* _supposedHomeworks.map(
        (expectedHomeworks) => expectedHomeworks.fold(
          (failure) => WatchHomeworksState.homeworksError(failure),
          (homeworks) => WatchHomeworksState.homeworksSuccess(homeworks),
        ),
      );
    });
  }
}
