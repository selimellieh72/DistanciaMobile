import 'package:edulb/widgets/homeworks/add_homework_form.dart';
import 'package:flutter/material.dart';

class AddHomework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Chip(
                label: Text(
                  'Add homework',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Divider(),
              AddHomeworkForm(),
            ],
          ),
        ),
      ),
    );
  }
}
