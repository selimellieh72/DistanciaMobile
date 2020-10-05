import 'package:edulb/application/grades/edit_grades/edit_grades_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditWidget extends StatelessWidget {
  FlatButton _buildCustomFlatButton(
      String text, Function onPressed, bool isDisabled) {
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(
            color: isDisabled ? Colors.grey : Color.fromRGBO(0, 113, 227, 1),
            fontSize: 15,
            fontWeight: FontWeight.w400),
      ),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditGradesBloc, EditGradesState>(
      builder: (_, state) {
        return Container(
          child: Row(
            children: state.maybeMap(
              gradeEdit: (s) => [
                _buildCustomFlatButton(
                    'Delete',
                    s.editedGradesIds.length == 0
                        ? null
                        : () => context
                            .bloc<EditGradesBloc>()
                            .add(EditGradesEvent.gradesRemoved()),
                    s.editedGradesIds.length == 0 ? true : false),
                _buildCustomFlatButton(
                    'Cancel',
                    () => context.bloc<EditGradesBloc>().add(
                          EditGradesEvent.editGradeStopped(),
                        ),
                    false),
              ],
              orElse: () => [
                _buildCustomFlatButton(
                    'Edit',
                    () => context.bloc<EditGradesBloc>().add(
                          EditGradesEvent.editGradeStarted(),
                        ),
                    false)
              ],
            ),
          ),
        );
      },
    );
  }
}
