import 'package:edulb/screens/both/homework_screen.dart';
import 'package:edulb/widgets/others/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeworksButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final gradeId = ModalRoute.of(context).settings.arguments;
    return HomeWidget(
      Color.fromRGBO(255, 0, 0, 0.37),
      screenSize.height * 0.28,
      Color.fromRGBO(255, 0, 0, 0.68),
      screenSize.width * 0.42,
      Icon(
        MdiIcons.bookOpenPageVariantOutline,
        color: Color.fromRGBO(255, 0, 0, 1),
        size: screenSize.height * 0.11,
      ),
      Text(
        'Homeworks',
        style: TextStyle(
            color: Color.fromRGBO(255, 0, 0, 0.68),
            fontSize: 22,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
      ),
      () => Navigator.of(context)
          .pushReplacementNamed(HomeworkScreen.routeName, arguments: gradeId),
    );
  }
}
