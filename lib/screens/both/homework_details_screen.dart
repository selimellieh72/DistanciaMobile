import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/application/homeworks/fetch_submits/fetch_submits_bloc.dart';
import 'package:edulb/application/homeworks/submit_homework/submit_homework_bloc.dart';
import 'package:edulb/domain/homeworks/homework_item.dart';
import 'package:edulb/injectable.dart';
import 'package:edulb/widgets/homeworks/homeworks_details/homework_details_widgets.dart';

import '../../widgets/core/user_bloc_get_user_data.dart';
import 'package:edulb/widgets/homeworks/homeworks_details/teacherHomework/homework_details_widgets_teacher.dart';
import 'package:edulb/widgets/stack/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeworkDetailsScreen extends StatelessWidget {
  static const routeName = '/homework-details-screen';
  @override
  Widget build(BuildContext context) {
    final HomeworkItem _homework = ModalRoute.of(context).settings.arguments;
    final _isTeacher = context.bloc<AuthBloc>().state.getUserData().isTeacher;

    return BlocProvider(
      create: (_) => getIt.get<SubmitHomeworkBloc>(),
      child: BackgroundWidget(
        title: _homework.title,
        child: _isTeacher
            ? BlocProvider(
                create: (_) => getIt.get<FetchSubmitsBloc>()
                  ..add(FetchSubmitsEvent.fetchSubmitsStarted(
                      homeworkId: _homework.id, gradeId: _homework.gradeId)),
                child: HomeworksDetailsWidgetsTeacher(),
              )
            : HomeworkDetailsWidgets(),
      ),
    );
  }
}
