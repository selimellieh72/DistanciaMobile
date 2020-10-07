import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.menu,
        size: 35,
      ),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
