import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  final String label;
  const FormLabel(this.label);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        label,
        textAlign: TextAlign.start,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            .copyWith(color: Color.fromRGBO(42, 42, 42, 1)),
      ),
    );
  }
}
