import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:edulb/domain/grades/grade.dart';
import 'package:edulb/domain/grades/grades_failures.dart';
import 'package:edulb/domain/grades/i_grades.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'grades_event.dart';
part 'grades_state.dart';
part 'grades_bloc.freezed.dart';

@injectable
class GradesBloc extends Bloc<GradesEvent, GradesState> {
  final IGradesRepository _iGradesRepository;
  GradesBloc(this._iGradesRepository) : super(const GradesState.initial());

  @override
  Stream<GradesState> mapEventToState(
    GradesEvent event,
  ) async* {
    yield* event.map(
      watchGradesStarted: (_) async* {
        yield* _iGradesRepository.watchGrades().map(
              (grades) => grades.fold(
                (failure) => GradesState.gradesError(gradeFailure: failure),
                (grades) => GradesState.gradesLoaded(grades: grades),
              ),
            );
      },
    );
  }
}
