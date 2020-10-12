import 'package:flutter/material.dart';

class CustomInputFeild extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final int maxLength;
  final int maxLines;

  const CustomInputFeild({
    Key key,
    @required this.hintText,
    @required this.validator,
    @required this.onSaved,
    this.maxLength,
    this.maxLines,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: TextFormField(
        maxLength: maxLength,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        validator: validator,
        onSaved: onSaved,
        maxLines: maxLines,
      ),
    );
  }
}
