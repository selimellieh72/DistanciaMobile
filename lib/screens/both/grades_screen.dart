import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:edulb/models/app_info.dart';
import 'package:edulb/widgets/grades/grades_list.dart';
import 'package:edulb/widgets/stack/stack_widget.dart';
import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/models/user_data.dart';
import 'package:edulb/widgets/requests/request_widget.dart';
import 'package:edulb/widgets/grades/add_grade.dart';

class GradesScreen extends StatefulWidget {
  static const routeName = '/teachers/grades';

  @override
  _GradesScreenState createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
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
    final userData = Provider.of<UserData>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: StackWidget(
        screenTitle: 'Grades',
        widget: GradesList(),
      ),
      floatingActionButton: Consumer<AppInfo>(
        builder: (_, appInfo, ch) {
          print(appInfo.isDrawerOpened.toString() + " drawer");
          print(appInfo.isEditting.toString() + " edit mode");
          if (appInfo.isEditting || appInfo.isDrawerOpened) {
            return Container();
          }
          return FloatingActionButton(
            onPressed: () => _addButtonHandler(userData.isTeacher, context),
            child: Icon(Icons.add),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
