import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:edulb/presentation/others/home_widgets.dart';

class ChatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return HomeWidget(
      Color.fromRGBO(93, 0, 255, 0.41),
      screenSize.height * 0.2,
      Color.fromRGBO(48, 0, 132, 0.76),
      screenSize.width * 0.42,
      Icon(
        MdiIcons.forumOutline,
        color: Color.fromRGBO(197, 0, 255, 0.3),
        size: screenSize.height * 0.08,
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
    );
  }
}
