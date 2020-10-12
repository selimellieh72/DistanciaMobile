import 'package:flutter/material.dart';

import 'package:edulb/presentation/homeworks/add_homework_form.dart';

class AddHomework extends StatelessWidget {
  final String id;

  AddHomework(this.id);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Text(
          'Add homework',
          style: Theme.of(context).textTheme.headline1,
        ),
        Divider(),
        AddHomeworkForm(id),
      ],
    );
  }
}
