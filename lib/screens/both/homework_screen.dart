import 'package:flutter/material.dart';

import 'package:edulb/widgets/homeworks/add_homework.dart';
import 'package:edulb/widgets/homeworks/homeworks.dart';
import 'package:edulb/helpers/custom_builders.dart';

class HomeworkScreen extends StatelessWidget {
  static const routeName = '/teacher/homework-screen';
  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Homeworks'),
      ),
      body: Homeworks(id),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => CustomBuilders.showResponsiveBottomSheet(
          context: context,
          child: AddHomework(id),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
