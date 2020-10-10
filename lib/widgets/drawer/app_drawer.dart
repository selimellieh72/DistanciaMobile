import 'package:edulb/application/app_drawer/app_drawer_bloc.dart';
import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/screens/both/home_screen.dart';
import 'package:edulb/screens/teachers/requests.dart';
import 'package:edulb/widgets/auth/logout_button.dart';
import 'package:edulb/widgets/drawer/profile_drawer.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../core/user_bloc_get_user_data.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  Widget _buildResponsiveFlatButton(
      {Widget button, Widget title, Function onPressed, Icon icon}) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= 150) {
          if (button != null) {
            return button;
          }
          return FlatButton.icon(
            onPressed: onPressed,
            icon: icon,
            label: title,
          );
        }
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    final _isTeacher = context.bloc<AuthBloc>().state.getUserData().isTeacher;

    return Container(
      width: double.infinity,
      child: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: sizeScreen.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  iconSize: 40,
                  onPressed: () {
                    Navigator.of(context).pop();
                    context
                        .bloc<AppDrawerBloc>()
                        .add(AppDrawerEvent.drawerClosed());
                  },
                ),
              ],
            ),
            ProfileDrawer(),
            _buildResponsiveFlatButton(
              title: Text(
                'Home',
                style: Theme.of(context).textTheme.headline1,
              ),
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(HomeScreen.routeName),
              icon: Icon(Icons.home),
            ),
            if (_isTeacher)
              IconButton(
                icon: Icon(Icons.people),
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(RequestsScreen.routeName),
              ),
            Spacer(),
            Align(alignment: Alignment.bottomRight, child: LogoutButton()),
          ],
        ),
      ),
    );
  }
}
