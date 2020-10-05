import 'package:edulb/widgets/homeWidgets/calendar_button.dart';
import 'package:edulb/widgets/homeWidgets/chat_button.dart';
import 'package:edulb/widgets/homeWidgets/classes_button.dart';
import 'package:edulb/widgets/homeWidgets/exams_button.dart';
import 'package:edulb/widgets/homeWidgets/grade_button.dart';
import 'package:edulb/widgets/homeWidgets/homeworks_button.dart';
import 'package:edulb/widgets/others/app_drawer.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 222, 222, 1),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height * 0.07,
                ),
                Text(
                  'Home',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 50),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(17, 20, 17, 0),
            height: screenSize.height * 0.8,
            margin: EdgeInsets.only(top: screenSize.height * 0.2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    ClassesButton(),
                    SizedBox(
                      height: screenSize.height * 0.013,
                    ),
                    ExamsButton(),
                    SizedBox(
                      height: screenSize.height * 0.013,
                    ),
                    CalendarButton(),
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.048,
                ),
                Column(
                  children: [
                    HomeworksButton(),
                    SizedBox(
                      height: screenSize.height * 0.013,
                    ),
                    ChatButton(),
                    SizedBox(
                      height: screenSize.height * 0.013,
                    ),
                    GradesButton(),
                  ],
                ),
              ],
            ),
          ),
          AppDrawer(),
        ],
      ),
    );
  }
}
