import 'package:edulb/widgets/others/app_drawer.dart';
import 'package:edulb/widgets/others/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'grades_screen.dart';

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
                    HomeWidget(
                      Color.fromRGBO(1, 200, 35, 0.5),
                      screenSize.height * 0.20,
                      Color.fromRGBO(0, 255, 43, 1),
                      screenSize.width * 0.43,
                      Icon(
                        MdiIcons.monitor,
                        color: Color.fromRGBO(56, 185, 78, 1),
                        size: 70,
                      ),
                      Text(
                        'Classes',
                        style: TextStyle(
                            color: Color.fromRGBO(56, 185, 78, 1),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                      () {},
                    ),
                    SizedBox(
                      height: screenSize.height * 0.013,
                    ),
                    HomeWidget(
                      Color.fromRGBO(255, 255, 0, 0.25),
                      screenSize.height * 0.28,
                      Color.fromRGBO(226, 226, 0, 0.71),
                      screenSize.width * 0.42,
                      Icon(
                        MdiIcons.clipboardText,
                        color: Color.fromRGBO(189, 199, 61, 0.6),
                        size: 100,
                      ),
                      Text(
                        'Exams',
                        style: TextStyle(
                            color: Color.fromRGBO(189, 199, 61, 0.6),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                      () {},
                    ),
                    SizedBox(
                      height: screenSize.height * 0.013,
                    ),
                    HomeWidget(
                      Color.fromRGBO(255, 0, 230, 0.5),
                      screenSize.height * 0.2,
                      Color.fromRGBO(128, 0, 115, 0.89),
                      screenSize.width * 0.42,
                      Icon(MdiIcons.calendarMonthOutline,
                          color: Color.fromRGBO(128, 0, 0115, 0.68), size: 70),
                      Text(
                        'Calendar',
                        style: TextStyle(
                            color: Color.fromRGBO(128, 0, 0115, 0.68),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                      () {},
                    )
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.048,
                ),
                Column(
                  children: [
                    HomeWidget(
                      Color.fromRGBO(255, 0, 0, 0.37),
                      screenSize.height * 0.28,
                      Color.fromRGBO(255, 0, 0, 0.68),
                      screenSize.width * 0.42,
                      Icon(
                        MdiIcons.bookOpenPageVariantOutline,
                        color: Color.fromRGBO(255, 0, 0, 1),
                        size: 100,
                      ),
                      Text(
                        'Homeworks',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 0, 0, 0.68),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                      () {},
                    ),
                    SizedBox(
                      height: screenSize.height * 0.013,
                    ),
                    HomeWidget(
                      Color.fromRGBO(93, 0, 255, 0.41),
                      screenSize.height * 0.2,
                      Color.fromRGBO(48, 0, 132, 0.76),
                      screenSize.width * 0.42,
                      Icon(
                        MdiIcons.forumOutline,
                        color: Color.fromRGBO(197, 0, 255, 0.3),
                        size: 70,
                      ),
                      Text(
                        'Chat',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 0, 255, 0.3),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                      () {},
                    ),
                    SizedBox(
                      height: screenSize.height * 0.013,
                    ),
                    HomeWidget(
                      Color.fromRGBO(255, 119, 0, 0.31),
                      screenSize.height * 0.2,
                      Color.fromRGBO(212, 99, 0, 0.73),
                      screenSize.width * 0.42,
                      Icon(
                        MdiIcons.book,
                        color: Color.fromRGBO(255, 119, 0, 0.43),
                        size: 70,
                      ),
                      Text(
                        'Grades',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 119, 0, 0.43),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                      () => Navigator.of(context)
                          .pushReplacementNamed(GradesScreen.routeName),
                    ),
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
