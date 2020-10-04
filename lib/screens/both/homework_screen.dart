import 'package:flutter/material.dart';

import 'package:edulb/widgets/homeworks/homeworks_list.dart';
import 'package:edulb/widgets/stack/stack_widget.dart';

class HomeworkScreen extends StatelessWidget {
  final String gradeId;

  const HomeworkScreen(this.gradeId);
  @override
  Widget build(BuildContext context) {
    return StackWidget(
      screenTitle: 'Homeworks',
      widget: HomeworksList(gradeId),
    );
  }
}
