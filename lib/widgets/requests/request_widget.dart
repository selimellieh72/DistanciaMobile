import 'package:edulb/widgets/requests/request_form.dart';
import 'package:flutter/material.dart';

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Chip(
          backgroundColor: Color.fromRGBO(42, 42, 42, 1),
          elevation: 10,
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Request to join grade',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
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
