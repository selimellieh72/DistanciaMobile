import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:edulb/domain/grades/grades_failures.dart';
import 'package:edulb/domain/grades/i_grades_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_grades_event.dart';
part 'edit_grades_state.dart';
part 'edit_grades_bloc.freezed.dart';

@injectable
class EditGradesBloc extends Bloc<EditGradesEvent, EditGradesState> {
  final IGradesRepository _iGradesRepository;
  EditGradesBloc(this._iGradesRepository)
      : super(const EditGradesState.gradeNotEdit());

  @override
  Stream<EditGradesState> mapEventToState(
    EditGradesEvent event,
  ) async* {
    yield* event.map(
      editGradeStarted: (e) async* {
        yield EditGradesState.gradeEdit(editedGradesIds: []);
      },
      editGradeStopped: (e) async* {
        yield EditGradesState.gradeNotEdit();
      },
      editGradeAddedOrRemoved: (e) async* {
        List<String> addGrade(_GradeEdit state) {
          return [...state.editedGradesIds]..add(e.gradeId);
        }

        List<String> removeGrade(_GradeEdit state) {
          return [...state.editedGradesIds]..remove(e.gradeId);
        }

        yield state.maybeMap(
          gradeEdit: (state) {
            if (state.editedGradesIds.contains(e.gradeId)) {
              return state.copyWith.call(editedGradesIds: removeGrade(state));
            } else {
              return state.copyWith.call(editedGradesIds: addGrade(state));
            }
          },
          orElse: () => EditGradesState.gradeNotEdit(),
        );
      },
      gradesRemoved: (e) async* {
        print('executed editGradeAddedOrRemoved');
        yield* state.maybeMap(
          gradeEdit: (s) async* {
            if (s.editedGradesIds.length == 0) {
              yield const EditGradesState.gradeNotEdit();
            }
            yield const EditGradesState.gradeLoading();

            final deleteResult =
                await _iGradesRepository.deleteGradeWithIds(s.editedGradesIds);

            yield deleteResult.fold(
              (failure) => EditGradesState.gradeError(gradeFailure: failure),
              (_) => EditGradesState.gradeNotEdit(),
            );
          },
          orElse: () async* {
            yield EditGradesState.gradeNotEdit();
          },
        );
      },
    );
  }
}
