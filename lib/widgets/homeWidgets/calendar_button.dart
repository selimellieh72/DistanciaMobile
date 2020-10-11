import 'package:edulb/widgets/others/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CalendarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return HomeWidget(
      Color.fromRGBO(255, 0, 230, 0.5),
      screenSize.height * 0.2,
      Color.fromRGBO(128, 0, 115, 0.89),
      screenSize.width * 0.42,
      Icon(
        MdiIcons.calendarMonthOutline,
        color: Color.fromRGBO(128, 0, 0115, 0.68),
        size: screenSize.height * 0.078,
      ),
      Text(
        'Calendar',
        style: TextStyle(
            color: Color.fromRGBO(128, 0, 0115, 0.68),
            fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
      ),
      () {},
    );
  }
}
