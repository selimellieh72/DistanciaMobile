import 'package:edulb/presentation/core/background_widget.dart';
import 'package:edulb/presentation/core/custom_bottom_navigation_bar.dart';
import 'package:edulb/presentation/homeWidget/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/application/grades/edit_grades/edit_grades_bloc.dart';
import 'package:edulb/application/grades/grades_bloc.dart';
import 'package:edulb/presentation/grades/add_grade.dart';
import 'package:edulb/presentation/grades/grades_list.dart';
import 'package:edulb/presentation/request/request_widget.dart';
import 'package:edulb/presentation/core/user_bloc_get_user_data.dart';

class GradesScreen extends StatefulWidget {
  static const routeName = '/grades';

  @override
  _GradesScreenState createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  bool _showEdit = false;

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
            gradeLoading: (s) => Center(
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
                  cancelEditMode: () {
                    context
                        .bloc<EditGradesBloc>()
                        .add(EditGradesEvent.editGradeStopped());
                  },
                  // delete: (s) {
                  //   if (s.editedGradesIds.length == 0) {
                  //     return;
                  //   }
                  //   context
                  //       .bloc<EditGradesBloc>()
                  //       .add(EditGradesEvent.gradesRemoved());
                  // },
                  edit: null,
                  homeTarget: () => Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.routeName),
                  setEditMode: () {
                    context
                        .bloc<EditGradesBloc>()
                        .add(EditGradesEvent.editGradeStarted());
                  },
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
