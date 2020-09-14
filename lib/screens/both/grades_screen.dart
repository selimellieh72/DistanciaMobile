import 'package:edulb/widgets/others/student_drawer.dart';
import 'package:flutter/material.dart';

import 'package:edulb/helpers/custom_builders.dart';

import 'package:edulb/models/user_data.dart';

import 'package:edulb/widgets/grades/grades_list.dart';
import 'package:edulb/widgets/others/teacher_drawer.dart';
import 'package:edulb/widgets/grades/add_grade.dart';
import 'package:provider/provider.dart';

class GradesScreen extends StatelessWidget {
  static const routeName = '/teachers/grades';

  @override
  Widget build(BuildContext context) {
    final UserData userData = Provider.of<UserData>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(userData.isTeacher ? 'Grades' : 'Materials'),
        actions: [
          if (userData.isTeacher)
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => CustomBuilders.showResponsiveBottomSheet(
                  context: context, child: AddGrade()),
            )
        ],
      ),
      drawer: userData.isTeacher ? TeacherAppDrawer() : StudentAppDrawer(),
      body: GradesList(),
      floatingActionButton: !userData.isTeacher
          ? FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {},
            )
          : Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
