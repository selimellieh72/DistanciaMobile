import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/application/grades/edit_grades/edit_grades_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edulb/screens/both/tab_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../core/user_bloc_get_user_data.dart';

class GradeItem extends StatelessWidget {
  final String gradeName;

  final String id;

  final String discipline;

  final int studentsNumber;

  GradeItem({
    @required this.id,
    @required this.gradeName,
    @required this.discipline,
    @required this.studentsNumber,
  });

  @override
  Widget build(BuildContext context) {
    final userData = context.bloc<AuthBloc>().state.getUserData();

    return BlocBuilder<EditGradesBloc, EditGradesState>(
      builder: (_, state) {
        return InkWell(
          onTap: state.maybeMap(
            gradeEdit: (_) => () => context.bloc<EditGradesBloc>().add(
                  EditGradesEvent.editGradeAddedOrRemoved(id),
                ),
            orElse: () => () => Navigator.of(context)
                .pushReplacementNamed(TabsScreen.routeName, arguments: id),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              state.maybeMap(
                gradeEdit: (s) => Stack(
                  children: [
                    Icon(
                      MdiIcons.book,
                      size: 100,
                      color: Color.fromRGBO(90, 90, 90, 1),
                    ),
                    Positioned.fill(
                      bottom: 15,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 45,
                                color: Color.fromRGBO(90, 90, 90, 1),
                              ),
                            ],
                          ),
                          child: !s.editedGradesIds.contains(id)
                              ? Icon(
                                  MdiIcons.checkCircleOutline,
                                  size: 25,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                )
                              : Icon(
                                  MdiIcons.checkCircle,
                                  size: 25,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
                orElse: () => Icon(
                  MdiIcons.book,
                  size: 100,
                  color: Color.fromRGBO(90, 90, 90, 1),
                ),
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  discipline,
                  style: TextStyle(
                    color: Color.fromRGBO(42, 42, 42, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: 0.5,
                    wordSpacing: 2,
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  userData.isTeacher ? gradeName : userData.firstName,
                  style: TextStyle(
                    color: Color.fromRGBO(42, 42, 42, 1),
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.5,
                    wordSpacing: 2,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
