import 'package:edulb/domain/homeworks/homework_item.dart' as domain;
import 'package:flutter/material.dart';

import 'package:edulb/helpers/db_helper.dart';

import 'homework_item.dart';

class HomeworksList extends StatelessWidget {
  final String gradeId;

  const HomeworksList(this.gradeId);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<domain.HomeworkItem>>(
      stream: DBHELPER.fetchHomeworks(gradeId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final _homeworks = snapshot.data;
        if (_homeworks.isEmpty) {
          return Center(
            child: Text('No homeworks available - Please add one.'),
          );
        }
        return ListView.builder(
          itemCount: _homeworks.length,
          itemBuilder: (_, i) => HomeworkItem(
            _homeworks[i],
          ),
        );
      },
    );
  }
}
