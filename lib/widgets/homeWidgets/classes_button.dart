import 'package:edulb/widgets/others/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ClassesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return HomeWidget(
      Color.fromRGBO(1, 200, 35, 0.5),
      screenSize.height * 0.20,
      Color.fromRGBO(0, 255, 43, 1),
      screenSize.width * 0.43,
      Icon(
        MdiIcons.monitor,
        color: Color.fromRGBO(56, 185, 78, 1),
        size: screenSize.height * 0.078,
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
    );
  }
}
