import 'package:edulb/domain/homeworks/homework_item.dart';
import 'package:edulb/widgets/homeworks/homeworks_details/homework_details_widgets.dart';
import 'package:edulb/widgets/stack/background_widget.dart';
import 'package:flutter/material.dart';

class HomeworkDetailsScreen extends StatelessWidget {
  static const routeName = '/homework-details-screen';
  @override
  Widget build(BuildContext context) {
    final HomeworkItem _homework = ModalRoute.of(context).settings.arguments;
    return BackgroundWidget(_homework.title, HomeworkDetailsWidgets(), null);
  }
}
