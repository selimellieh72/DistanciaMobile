import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/models/user_data.dart';
import 'package:edulb/widgets/others/student_drawer.dart';
import 'package:edulb/widgets/requests/request_widget.dart';
import 'package:edulb/widgets/grades/grades_list.dart';
import 'package:edulb/widgets/others/teacher_drawer.dart';
import 'package:edulb/widgets/grades/add_grade.dart';

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
      appBar: AppBar(),
      body: Stack(
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _addButtonHandler(userData.isTeacher, context),
          ),
          GradesList(),
          userData.isTeacher ? TeacherDrawer() : StudentDrawer(),
        ],
      ),
    );
  }
}
