import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/application/grades/edit_grades/edit_grades_bloc.dart';
import 'package:edulb/screens/both/homework_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edulb/screens/both/tab_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final _screenSize = MediaQuery.of(context).size;

    return BlocBuilder<EditGradesBloc, EditGradesState>(
      builder: (_, state) {
        return InkWell(
          onTap: state.maybeMap(
            gradeEdit: (_) => () => context.bloc<EditGradesBloc>().add(
                  EditGradesEvent.editGradeAddedOrRemoved(id),
                ),
            orElse: () => () => Navigator.of(context)
                .pushReplacementNamed(HomeworkScreen.routeName, arguments: id),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: _screenSize.height * 0.05,
              width: _screenSize.width * 0.05,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(94, 231, 254, 1),
                    Color.fromRGBO(8, 204, 60, 1),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: _screenSize.height * 0.12,
                            child: SvgPicture.asset('assets/icons/grade.svg'),
                          ),
                          Text(
                            discipline,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          userData.isTeacher
                              ? Text(
                                  gradeName,
                                  style: Theme.of(context).textTheme.bodyText1,
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 5,
                      right: 5,
                      child: state.maybeMap(
                        gradeEdit: (state) => Icon(
                          !state.editedGradesIds.contains(id)
                              ? MdiIcons.checkCircleOutline
                              : MdiIcons.checkCircle,
                          size: 30,
                          color: Color.fromRGBO(230, 230, 230, 1),
                        ),
                        orElse: () => Container(),
                      ))
                ],
              ),
            ),

            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     state.maybeMap(
            //       gradeEdit: (s) => Stack(
            //         children: [
            //           Icon(
            //             MdiIcons.book,
            //             size: 100,
            //             color: Color.fromRGBO(90, 90, 90, 1),
            //           ),
            //           Positioned.fill(
            //             bottom: 15,
            //             child: Align(
            //               alignment: Alignment.bottomCenter,
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                   boxShadow: [
            //                     BoxShadow(
            //                       blurRadius: 45,
            //                       color: Color.fromRGBO(90, 90, 90, 1),
            //                     ),
            //                   ],
            //                 ),
            //                 child: !s.editedGradesIds.contains(id)
            //                     ? Icon(
            //                         MdiIcons.checkCircleOutline,
            //                         size: 25,
            //                         color: Color.fromRGBO(230, 230, 230, 1),
            //                       )
            //                     : Icon(
            //                         MdiIcons.checkCircle,
            //                         size: 25,
            //                         color: Color.fromRGBO(230, 230, 230, 1),
            //                       ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //       orElse: () => Icon(
            //         MdiIcons.book,
            //         size: 100,
            //         color: Color.fromRGBO(90, 90, 90, 1),
            //       ),
            //     ),
            // FittedBox(
            //   fit: BoxFit.fitWidth,
            //   child: Text(
            //     discipline,
            //     style: TextStyle(
            //       color: Color.fromRGBO(42, 42, 42, 1),
            //       fontWeight: FontWeight.w500,
            //       fontSize: 20,
            //       letterSpacing: 0.5,
            //       wordSpacing: 2,
            //     ),
            //   ),
            // ),
            //     FittedBox(
            //       fit: BoxFit.fitWidth,
            //       child: Text(
            //         userData.isTeacher ? gradeName : userData.firstName,
            //         style: TextStyle(
            //           color: Color.fromRGBO(42, 42, 42, 1),
            //           fontWeight: FontWeight.w300,
            //           letterSpacing: 0.5,
            //           wordSpacing: 2,
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ),
        );
      },
    );
  }
}
