import 'package:flutter/material.dart';

import 'package:edulb/presentation/homeworks/homeworks_list.dart';

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
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: screenSize.height * .02,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       'FIlter By:',
        //       style: _textStyle,
        //     ),
        //     SizedBox(
        //       width: 5,
        //     ),
        //     Text(
        //       'Physics',
        //       style: _textStyle,
        //     ), // margin: EdgeInsets.only(top: screenSize.height * 0.11),
        //     Icon(
        //       Icons.arrow_drop_down,
        //       size: 25,
        //     ),
        //   ],
        // ),
        Expanded(child: HomeworksList(gradeId)),
      ],
    );
  }
}
