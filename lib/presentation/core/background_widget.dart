import 'package:flutter/material.dart';

import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/presentation/drawer/app_drawer.dart';
import 'package:edulb/presentation/drawer/drawer_icon.dart';

class BackgroundWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget floatingActionButton;
  final Widget customNavigator;
  bool drawerCheck = true;
  BackgroundWidget(
      {@required this.title,
      @required this.child,
      this.floatingActionButton,
      this.customNavigator});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(222, 222, 222, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(top: 12, left: 10, child: DrawerIcon()),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        .copyWith(fontSize: 40),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 35,
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
        bottomNavigationBar: customNavigator,
      ),
    );
  }
}
