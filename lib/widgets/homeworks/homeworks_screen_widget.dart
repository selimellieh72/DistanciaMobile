import 'package:edulb/widgets/homeworks/homeworks_list.dart';
import 'package:flutter/material.dart';

class HomeworksScreenWidget extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(42, 42, 42, 1),
  );
  @override
  Widget build(BuildContext context) {
    final gradeId = ModalRoute.of(context).settings.arguments;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'FIlter By:',
              style: _textStyle,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Physics',
              style: _textStyle,
            ),
            Icon(
              Icons.arrow_drop_down,
              size: 25,
            ),
          ],
        ),
        Expanded(child: HomeworksList(gradeId)),
      ],
    );
  }
}
