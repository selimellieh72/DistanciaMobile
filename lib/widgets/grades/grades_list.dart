import 'package:flutter/material.dart';

import 'package:edulb/models/grade.dart';
import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/widgets/grades/grade_item.dart' as g;

class GradesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<GradeItem>>(
      stream: DBHELPER.fetchGrades(),
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
              childAspectRatio: 1 / 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 20,
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
