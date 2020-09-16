import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:edulb/helpers/db_helper.dart';
import '../../widgets/homeworks/homework_item.dart';

class HomeworksScreen extends StatelessWidget {
  final String id;

  HomeworksScreen(this.id);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: DBHELPER.fetchHomeworks(id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final _homeworks = snapshot.data.docs.reversed.toList();
        if (_homeworks.isEmpty) {
          return Center(
            child: Text('No homeworks available - Please add one.'),
          );
        }
        return ListView.builder(
          itemCount: _homeworks.length,
          itemBuilder: (_, i) => HomeworkItem(
            title: _homeworks[i].data()['title'],
            instructions: _homeworks[i].data()['instructions'],
            date: _homeworks[i].data()['createdAt'].toDate(),
          ),
        );
      },
    );
  }
}
