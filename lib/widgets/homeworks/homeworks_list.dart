import 'package:edulb/models/user_data.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:edulb/helpers/db_helper.dart';
import 'package:provider/provider.dart';
import 'homework_item.dart';

class HomeworksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context);
    return StreamBuilder<QuerySnapshot>(
      stream: DBHELPER.fetchHomeworks(userData.id),
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
