import 'package:edulb/application/homeworks/watch_homeworks_bloc.dart';
import 'package:edulb/domain/homeworks/homework_item.dart' as domain;
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'homework_item.dart';

class HomeworksList extends StatelessWidget {
  final String gradeId;

  const HomeworksList(this.gradeId);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WatchHomeworksBloc, WatchHomeworksState>(
      listener: (_, state) {
        state.maybeMap(
          homeworksError: (errorState) => FlushbarHelper.createError(
                  message: errorState.failure.map(
                      unexpectedServerError: (_) => 'Unexpected Server Error '))
              .show(context),
          orElse: () {},
        );
      },
      builder: (_, state) {
        print(state);
        return state.map(
          initial: (_) => Center(child: CircularProgressIndicator()),
          homeworksSuccess: (successState) {
            final _homeworks = successState.homeworks;
            return ListView.builder(
              itemCount: _homeworks.length,
              itemBuilder: (_, i) => HomeworkItem(
                key: ValueKey(_homeworks[i].id),
                homework: _homeworks[i],
              ),
            );
          },
          homeworksError: (_) => Container(),
        );
      },
    );
  }
}
