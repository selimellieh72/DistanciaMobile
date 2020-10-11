import 'package:edulb/application/grades/grades_bloc.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

import 'package:edulb/widgets/grades/grade_item.dart' as g;

class GradesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GradesBloc, GradesState>(
      listener: (_, state) => state.maybeMap(
        gradesError: (s) => FlushbarHelper.createError(
          message: s.gradeFailure
              .map(unexcpectedServerError: (_) => 'Unexpected server error'),
        ).show(context),
        orElse: () => Container(),
      ),
      builder: (context, state) {
        return state.map(
          initial: (_) => Center(
            child: CircularProgressIndicator(),
          ),
          gradesLoaded: (s) {
            final _gradeItems = s.grades;

            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                ),
                itemCount: _gradeItems.length,
                itemBuilder: (_, i) => g.GradeItem(
                  id: _gradeItems[i].id,
                  gradeName: _gradeItems[i].gradeName,
                  discipline: _gradeItems[i].discipline,
                  studentsNumber: 1,
                ),
              ),
            );
          },
          gradesError: (_) => Container(),
        );
      },
    );
  }
}
