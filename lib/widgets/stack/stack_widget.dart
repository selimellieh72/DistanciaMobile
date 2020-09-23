import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:edulb/models/user_data.dart';
import 'package:edulb/widgets/grades/edit_widget.dart';
import 'package:edulb/widgets/others/app_drawer.dart';

class StackWidget extends StatelessWidget {
  final screenTitle;
  final Widget widget;
  StackWidget({
    this.screenTitle,
    this.widget,
  });
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context);
    return Stack(
      children: [
        Positioned(
          right: 5,
          child: userData.isTeacher ? EditWidget() : Container(),
        ),
        Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  screenTitle,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            Divider(
              height: 2,
              color: Colors.black,
              indent: 10,
              endIndent: 10,
              thickness: 0.5,
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: widget,
            ),
          ],
        ),
        AppDrawer(),
      ],
    );
  }
}
