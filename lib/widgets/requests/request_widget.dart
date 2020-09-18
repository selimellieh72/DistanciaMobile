import 'package:edulb/widgets/requests/request_form.dart';
import 'package:flutter/material.dart';

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Chip(
          label: Text(
            'Request to join grade',
            style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 22),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RequestForm(),
      ],
    );
  }
}
