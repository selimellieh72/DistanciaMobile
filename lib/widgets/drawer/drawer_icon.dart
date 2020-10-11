import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        height: screenSize.height * 0.03,
        width: screenSize.width * 0.08,
        child: SvgPicture.asset('assets/icons/Hamburger Menu.svg'),
        /* IconButton(
        icon: Icon(
          Icons.menu,
          size: 35,
        ), */
      ),
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
