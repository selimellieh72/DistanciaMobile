import 'package:edulb/widgets/grades/add_grade_form.dart';
import 'package:flutter/material.dart';

class AddGrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Chip(
          label: Text(
            'Add grade',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        AddGradeForm(),
      ],
    );
  }
}
