import 'package:flutter/material.dart';

import 'package:edulb/presentation/drawer/app_drawer.dart';
import 'package:edulb/presentation/drawer/drawer_icon.dart';
import 'package:edulb/presentation/homeWidget/calendar_button.dart';
import 'package:edulb/presentation/homeWidget/chat_button.dart';
import 'package:edulb/presentation/homeWidget/classes_button.dart';
import 'package:edulb/presentation/homeWidget/exams_button.dart';
import 'package:edulb/presentation/homeWidget/grade_button.dart';
import 'package:edulb/presentation/homeWidget/homeworks_button.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(222, 222, 222, 1),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenSize.height * 0.005,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        Column(children: [
                          SizedBox(
                            height: screenSize.height * 0.005,
                          ),
                          DrawerIcon()
                        ]),
                      ],
                    ),
                  ),
                  Text(
                    'Home',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(17, 20, 17, 0),
              height: screenSize.height * 0.8,
              margin: EdgeInsets.only(top: screenSize.height * 0.17),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
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
                      width: screenSize.width * 0.043,
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
            ),
          ],
        ),
        drawer: AppDrawer(),
      ),
    );
  }
}
