import 'package:edulb/widgets/homeWidgets/calendar_button.dart';
import 'package:edulb/widgets/homeWidgets/chat_button.dart';
import 'package:edulb/widgets/homeWidgets/classes_button.dart';
import 'package:edulb/widgets/homeWidgets/exams_button.dart';
import 'package:edulb/widgets/homeWidgets/grade_button.dart';
import 'package:edulb/widgets/homeWidgets/homeworks_button.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container();
    // return Row(
    //   children: [
    //     Column(
    //       children: [
    //         ClassesButton(),
    //         SizedBox(
    //           height: screenSize.height * 0.013,
    //         ),
    //         ExamsButton(),
    //         SizedBox(
    //           height: screenSize.height * 0.013,
    //         ),
    //         CalendarButton(),
    //       ],
    //     ),
    //     SizedBox(
    //       width: screenSize.width * 0.048,
    //     ),
    //     Column(
    //       children: [
    //         HomeworksButton(),
    //         SizedBox(
    //           height: screenSize.height * 0.013,
    //         ),
    //         ChatButton(),
    //         SizedBox(
    //           height: screenSize.height * 0.013,
    //         ),
    //         GradesButton(),
    //       ],
    //     ),
    //   ],
    // );
  }
}
