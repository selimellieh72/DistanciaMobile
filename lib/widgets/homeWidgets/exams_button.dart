import 'package:edulb/widgets/others/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ExamsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return HomeWidget(
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
    );
  }
}