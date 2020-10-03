import 'package:edulb/application/auth/auth_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edulb/widgets/grades/edit_widget.dart';
import 'package:edulb/widgets/others/app_drawer.dart';
import 'package:edulb/widgets/core/user_bloc_get_user_data.dart';

class StackWidget extends StatelessWidget {
  final screenTitle;
  final Widget widget;
  final bool showEdit;
  StackWidget({
    @required this.screenTitle,
    @required this.widget,
    this.showEdit = true,
  });
  @override
  Widget build(BuildContext context) {
    final userData = context.bloc<AuthBloc>().state.getUserData();
    return Stack(
      children: [
        Positioned(
          right: 5,
          child: userData.isTeacher && showEdit ? EditWidget() : Container(),
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
