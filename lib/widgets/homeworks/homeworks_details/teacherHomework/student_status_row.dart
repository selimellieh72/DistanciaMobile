import 'package:flutter/material.dart';

class StudentStatusRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Name of the student',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontWeight: FontWeight.normal),
        ),
        Text(
          'Submitted',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
