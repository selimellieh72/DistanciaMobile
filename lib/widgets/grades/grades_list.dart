import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:edulb/domain/grade.dart';
import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/widgets/grades/grade_item.dart' as g;
import '../core/user_bloc_get_user_data.dart';

class GradesList extends StatelessWidget {
  final void Function(bool value) setIsEdit;

  const GradesList(this.setIsEdit);
  @override
  Widget build(BuildContext context) {
    bool isTeacher = context.bloc<AuthBloc>().state.getUserData().isTeacher;
    return StreamBuilder<List<GradeItem>>(
      stream: DBHELPER.fetchGrades(
        isTeacher: isTeacher,
        userId: FirebaseAuth.instance.currentUser.uid,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final _gradeItems = snapshot.data;

        Future.delayed(Duration(seconds: 0))
            .then((_) => setIsEdit(_gradeItems.length != 0));

        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 11 / 14,
              mainAxisSpacing: 10,
            ),
            itemCount: _gradeItems.length,
            itemBuilder: (_, i) => g.GradeItem(
              id: _gradeItems[i].id,
              gradeName: _gradeItems[i].gradeName,
              discipline: _gradeItems[i].discipline,
              studentsNumber: 1,
            ),
          ),
        );
      },
    );
  }
}
