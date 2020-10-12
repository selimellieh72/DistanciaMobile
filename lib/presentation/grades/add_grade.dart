import 'package:flutter/material.dart';

import 'package:edulb/presentation/grades/add_grade_form.dart';

class AddGrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Add a new grade',
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          height: 15,
        ),
        AddGradeForm(),
      ],
    );
  }
}
