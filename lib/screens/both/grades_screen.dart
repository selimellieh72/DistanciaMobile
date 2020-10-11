import 'dart:wasm';

import 'package:edulb/application/app_drawer/app_drawer_bloc.dart';
import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/application/grades/edit_grades/edit_grades_bloc.dart';
import 'package:edulb/application/grades/grades_bloc.dart';
import 'package:edulb/widgets/bottom%20Navigation%20Bar/custom_bottom_navigation_bar.dart';
import 'package:edulb/widgets/grades/grades_list.dart';
import 'package:edulb/widgets/stack/background_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      CustomBuilders.showResponsiveBottomSheet(context: ctx, child: AddGrade());
    } else {
      CustomBuilders.showResponsiveBottomSheet(context: ctx, child: Request());
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
    final userData = context.bloc<AuthBloc>().state.getUserData();
    return BlocBuilder<EditGradesBloc, EditGradesState>(
      builder: (_, editState) {
        print(editState);
        return SafeArea(
          child: editState.maybeMap(
            gradeLoading: (_) => Center(
              child: CircularProgressIndicator(),
            ),
            orElse: () => BlocBuilder<GradesBloc, GradesState>(
              builder: (_, state) => BackgroundWidget(
                child: GradesList(),
                title: 'Grades',
                customNavigator: CustomBottomNavigationBar(
                  add: () => userData.isTeacher
                      ? CustomBuilders.showResponsiveBottomSheet(
                          context: context, child: AddGrade())
                      : CustomBuilders.showResponsiveBottomSheet(
                          context: context, child: Request()),
                ),
              ),
            ),

            // showEdit: state.maybeMap(
            //   gradesLoaded: (s) => s.grades.length != 0,
            //   orElse: () => false,
            // ),
          ),
        );
      },
    );

    // floatingActionButton: BlocBuilder<AppDrawerBloc, AppDrawerState>(
    //   builder: (_, state) => state.map(
    //     closeDrawer: (_) => editState.maybeMap(
    //       gradeEdit: (_) => Container(),
    //       orElse: () => FloatingActionButton(
    //         onPressed: () =>
    //             _addButtonHandler(userData.isTeacher, context),
    //         child: Icon(Icons.add),
    //       ),
    //     ),
    //     openDrawer: (_) => Container(),
    //   ),
    // ),
    // floatingActionButtonLocation:
    //     FloatingActionButtonLocation.centerFloat,
  }
}
