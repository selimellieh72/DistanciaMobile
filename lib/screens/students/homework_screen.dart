import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/widgets/homeworks/homework_item.dart';
import 'package:flutter/material.dart';
import 'package:edulb/widgets/others/drawer.dart';

class HomeworkScreenStudent extends StatelessWidget {
  static const routeName = '/student/homework-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Homeworks',
        ),
      ),
      drawer: AppDrawer(),
      body: StreamBuilder<QuerySnapshot>(
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
          }),
    );
  }
}
