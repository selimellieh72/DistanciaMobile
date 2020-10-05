import 'package:edulb/application/app_drawer/app_drawer_bloc.dart';
import 'package:edulb/application/auth/auth_bloc.dart';
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

    final _isTeacher = context.bloc<AuthBloc>().state.getUserData();
    return Drawer(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileDrawer(),
              _buildResponsiveFlatButton(
                title: Text(
                  'Home',
                  style: Theme.of(context).textTheme.headline1,
                ),
                // onPressed: () =>
                //     Navigator.of(context).pushReplacementNamed(Home.routeName),
                icon: Icon(Icons.home),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
