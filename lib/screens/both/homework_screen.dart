import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:edulb/models/user_data.dart';
import 'package:edulb/widgets/homeworks/homeworks_list.dart';
import 'package:edulb/widgets/stack/stack_widget.dart';

class HomeworkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: StackWidget(
        screenTitle: 'Homeworks',
        widget: HomeworksList(),
      ),
    );
  }
}
