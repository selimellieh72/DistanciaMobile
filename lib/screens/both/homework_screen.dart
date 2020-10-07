import 'package:edulb/widgets/homeworks/add_homework.dart';

import 'package:edulb/widgets/homeworks/homeworks_screen_widget.dart';

import 'package:edulb/widgets/stack/background_widget.dart';

import 'package:flutter/material.dart';

class HomeworkScreen extends StatelessWidget {
  static const routeName = '/Homework-screen';

  @override
  Widget build(BuildContext context) {
    final gradeId = ModalRoute.of(context).settings.arguments;
    return BackgroundWidget(
      'Homeworks',
      HomeworksScreenWidget(),
      AddHomework(gradeId),
    );
  }
}
