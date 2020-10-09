import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/widgets/drawer/app_drawer.dart';
import 'package:edulb/widgets/drawer/drawer_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget floatingActionButton;
  BackgroundWidget({
    @required this.title,
    @required this.child,
    this.floatingActionButton,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(222, 222, 222, 1),
        body: Column(
          children: [
            DrawerIcon(),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                // margin: EdgeInsets.only(top: screenSize.height * 0.11),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: child,
              ),
            ),
          ],
        ),
        floatingActionButton: floatingActionButton,
        drawer: AppDrawer(),
      ),
    );
  }
}
