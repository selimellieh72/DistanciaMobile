import 'package:flutter/material.dart';

import 'package:edulb/widgets/homeworks/add_homework.dart';
import 'package:edulb/widgets/homeworks/homeworks.dart';
import 'package:edulb/helpers/custom_builders.dart';

class HomeworkScreenTeacher extends StatelessWidget {
  static const routeName = '/teacher/homework-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homeworks'),
      ),
      body: Homeworks(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => CustomBuilders.showResponsiveBottomSheet(
          context: context,
          child: AddHomework(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
