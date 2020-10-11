import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/application/grades/edit_grades/edit_grades_bloc.dart';
import 'package:edulb/screens/both/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:edulb/widgets/core/user_bloc_get_user_data.dart';

class EditWidget extends StatelessWidget {
  final add;

  const EditWidget({Key key, this.add}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userData = context.bloc<AuthBloc>().state.getUserData();
    GestureDetector _containerTemplate(Widget icon, Function function) {
      return GestureDetector(
        child: Container(
          height: 60,
          child: icon,
        ),
        onTap: function,
      );
    }

    return BlocBuilder<EditGradesBloc, EditGradesState>(
      builder: (_, state) {
        return Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: state.maybeMap(
                  gradeEdit: (s) => [
                        _containerTemplate(
                            SvgPicture.asset('assets/icons/edit.svg'), () {}),
                        _containerTemplate(
                            SvgPicture.asset('assets/icons/delete.svg'), () {
                          if (s.editedGradesIds.length == 0) {
                            return null;
                          }
                          context
                              .bloc<EditGradesBloc>()
                              .add(EditGradesEvent.gradesRemoved());
                        }),
                        _containerTemplate(
                            SvgPicture.asset('assets/icons/back-arrow.svg'),
                            () {
                          context
                              .bloc<EditGradesBloc>()
                              .add(EditGradesEvent.editGradeStopped());
                        }),
                      ],
                  orElse: () => userData.isTeacher
                      ? [
                          _containerTemplate(
                              SvgPicture.asset('assets/icons/edit.svg'), () {
                            context
                                .bloc<EditGradesBloc>()
                                .add(EditGradesEvent.editGradeStarted());
                          }),
                          _containerTemplate(
                              SvgPicture.asset('assets/icons/home.svg'),
                              () => Navigator.of(context)
                                  .pushReplacementNamed(HomeScreen.routeName)),
                          _containerTemplate(
                              SvgPicture.asset('assets/icons/add.svg'), add),
                        ]
                      : [
                          _containerTemplate(
                              SvgPicture.asset('assets/icons/home.svg'),
                              () => Navigator.of(context)
                                  .pushReplacementNamed(HomeScreen.routeName)),
                          _containerTemplate(
                              SvgPicture.asset('assets/icons/add.svg'), add),
                        ])),
        );
      },
    );
  }
}
