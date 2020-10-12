import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:edulb/presentation/core/user_bloc_get_user_data.dart';
import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/application/homeworks/watch_homeworks_bloc.dart';
import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/injectable.dart';
import 'package:edulb/presentation/default_background/background_widget.dart';
import 'package:edulb/presentation/homeworks/add_homework.dart';
import 'package:edulb/presentation/homeworks/homeworks_screen_widget.dart';

class HomeworkScreen extends StatelessWidget {
  static const routeName = '/Homework-screen';

  @override
  Widget build(BuildContext context) {
    final gradeId = ModalRoute.of(context).settings.arguments;
    final _userData = context.bloc<AuthBloc>().state.getUserData();
    return BackgroundWidget(
      title: 'Homeworks',
      child: BlocProvider(
        create: (_) => getIt.get<WatchHomeworksBloc>()
          ..add(WatchHomeworksEvent.watchHomeworksStarted(
              gradeId: gradeId ?? null)),
        child: HomeworksScreenWidget(),
      ),
      floatingActionButton: gradeId == null || !_userData.isTeacher
          ? Container()
          : FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => CustomBuilders.showResponsiveBottomSheet(
                  context: context, child: AddHomework(gradeId)),
            ),
    );
  }
}
