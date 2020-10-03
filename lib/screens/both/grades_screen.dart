import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:edulb/domain/app_info.dart';
import 'package:edulb/widgets/grades/grades_list.dart';
import 'package:edulb/widgets/stack/stack_widget.dart';
import 'package:edulb/helpers/custom_builders.dart';

import 'package:edulb/widgets/requests/request_widget.dart';
import 'package:edulb/widgets/grades/add_grade.dart';
import 'package:edulb/widgets/core/user_bloc_get_user_data.dart';

class GradesScreen extends StatefulWidget {
  static const routeName = '/grades';

  @override
  _GradesScreenState createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  bool _showEdit = false;
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

  void setShowEdit(bool value) {
    if (_showEdit == value) {
      return;
    }
    setState(() {
      _showEdit = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<AppInfo>(context, listen: false).resetAppInfo();
    final userData = context.bloc<AuthBloc>().state.getUserData();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: StackWidget(
        screenTitle: 'Grades',
        widget: GradesList(setShowEdit),
        showEdit: _showEdit,
      ),
      floatingActionButton: Consumer<AppInfo>(
        builder: (_, appInfo, ch) {
          print(appInfo.isDrawerOpened.toString() + " drawer");
          print(appInfo.isEditting.toString() + " edit mode");
          if (appInfo.isEditting || appInfo.isDrawerOpened) {
            print('here');
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
