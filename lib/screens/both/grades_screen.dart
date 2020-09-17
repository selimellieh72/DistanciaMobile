import 'package:edulb/widgets/others/student_drawer.dart';
import 'package:edulb/widgets/requests/request_widget.dart';
import 'package:flutter/material.dart';

import 'package:edulb/helpers/custom_builders.dart';

import 'package:edulb/models/user_data.dart';

import 'package:edulb/widgets/grades/grades_list.dart';
import 'package:edulb/widgets/others/teacher_drawer.dart';
import 'package:edulb/widgets/grades/add_grade.dart';
import 'package:provider/provider.dart';

class GradesScreen extends StatelessWidget {
  static const routeName = '/teachers/grades';

  void _addButtonHandler(bool isTeacher, BuildContext ctx) {
    if (isTeacher) {
      CustomBuilders.showResponsiveBottomSheet(
        context: ctx,
        child: AddGrade(),
      );
    } else {
      CustomBuilders.showResponsiveBottomSheet(
        context: ctx,
        child: Request(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final UserData userData = Provider.of<UserData>(context);
    print(userData.firstName);
    return Scaffold(
      appBar: AppBar(
        title: Text(userData.isTeacher ? 'Grades' : 'Materials'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _addButtonHandler(userData.isTeacher, context),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1),
      drawer: userData.isTeacher ? TeacherAppDrawer() : StudentAppDrawer(),
      body: GradesList(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
