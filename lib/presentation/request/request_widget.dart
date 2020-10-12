import 'package:flutter/material.dart';

import 'package:edulb/presentation/request/request_form.dart';

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Request to join a grade',
            style: Theme.of(context).textTheme.headline1),
        SizedBox(
          height: 20,
        ),
        RequestForm(),
      ],
    );
  }
}
