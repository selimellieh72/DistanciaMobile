import 'package:flutter/material.dart';

import 'package:edulb/widgets/homeworks/homeworks.dart';
import 'package:edulb/widgets/others/student_drawer.dart';

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
      drawer: StudentAppDrawer(),
      body: Homeworks(),
    );
  }
}
