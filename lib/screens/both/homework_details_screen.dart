import 'package:edulb/application/homeworks/submit_homework/submit_homework_bloc.dart';
import 'package:edulb/domain/homeworks/homework_item.dart';
import 'package:edulb/injectable.dart';
import 'package:edulb/widgets/homeworks/homeworks_details/homework_details_widgets.dart';
import 'package:edulb/widgets/stack/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeworkDetailsScreen extends StatelessWidget {
  static const routeName = '/homework-details-screen';
  @override
  Widget build(BuildContext context) {
    final HomeworkItem _homework = ModalRoute.of(context).settings.arguments;
    return BlocProvider(
      create: (_) => getIt.get<SubmitHomeworkBloc>(),
      child: BackgroundWidget(
        title: _homework.title,
        child: HomeworkDetailsWidgets(),
        // _homework.title,
        // HomeworkDetailsWidgets(),
        // null,
      ),
    );
  }
}
