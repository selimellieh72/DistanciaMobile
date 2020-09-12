import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:edulb/helpers/db_helper.dart';
import 'homework_item.dart';

class Homeworks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: DBHELPER.fetchHomeworks(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final _homeworks = snapshot.data.docs.reversed.toList();
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
