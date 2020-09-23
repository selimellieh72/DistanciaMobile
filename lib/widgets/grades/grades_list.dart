import 'package:edulb/models/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:edulb/models/grade.dart';
import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/widgets/grades/grade_item.dart' as g;
import 'package:provider/provider.dart';

class GradesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isTeacher = Provider.of<UserData>(context).isTeacher;
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
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: isTeacher ? 7 / 9 : 1 / 1,
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
