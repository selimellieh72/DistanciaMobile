import 'package:edulb/screens/both/grades_screen.dart';
import 'package:edulb/widgets/others/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GradesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return HomeWidget(
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
      () => Navigator.of(context).pushReplacementNamed(GradesScreen.routeName),
    );
  }
}
