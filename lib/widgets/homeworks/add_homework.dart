import 'package:edulb/widgets/homeworks/add_homework_form.dart';
import 'package:flutter/material.dart';

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
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Color.fromRGBO(42, 42, 42, 1)),
        ),
        Divider(),
        AddHomeworkForm(id),
      ],
    );
  }
}
