import 'package:edulb/widgets/others/teacher_drawer.dart';
import 'package:flutter/material.dart';

import 'package:edulb/widgets/grades/grades_list.dart';
import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/widgets/grades/add_grade.dart';

class GradesScreenTeacher extends StatelessWidget {
  static const routeName = '/teachers/grades';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your grades'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => CustomBuilders.showResponsiveBottomSheet(
                context: context, child: AddGrade()),
          )
        ],
      ),
      drawer: TeacherAppDrawer(),
      body: GradesList(),
    );
  }
}
