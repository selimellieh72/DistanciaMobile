import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/widgets/homeworks/add_homework.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:edulb/models/user_data.dart';
import 'package:edulb/widgets/homeworks/homeworks_list.dart';
import 'package:edulb/widgets/stack/stack_widget.dart';

class HomeworkScreen extends StatelessWidget {
  final String gradeId;

  const HomeworkScreen(this.gradeId);
  @override
  Widget build(BuildContext context) {
    print('id : $gradeId');
    final userData = Provider.of<UserData>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: StackWidget(
        screenTitle: 'Homeworks',
        widget: HomeworksList(gradeId),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => CustomBuilders.showResponsiveBottomSheet(
            context: context, child: AddHomework(gradeId)),
      ),
    );
  }
}
