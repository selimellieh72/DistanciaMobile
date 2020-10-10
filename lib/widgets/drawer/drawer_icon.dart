import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 35,
        width: 35,
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
