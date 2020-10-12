import 'package:edulb/widgets/grades/add_grade_form.dart';
import 'package:flutter/material.dart';

class AddGrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Add a new grade',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Color.fromRGBO(42, 42, 42, 1)),
        ),
        SizedBox(
          height: 15,
        ),
        AddGradeForm(),
      ],
    );
  }
}
