import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch_homeworks_event.dart';
part 'watch_homeworks_state.dart';
part 'watch_homeworks_bloc.freezed.dart';

class WatchHomeworksBloc extends Bloc<WatchHomeworksEvent, WatchHomeworksState> {
  WatchHomeworksBloc() : super(_Initial());

  @override
  Stream<WatchHomeworksState> mapEventToState(
    WatchHomeworksEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
