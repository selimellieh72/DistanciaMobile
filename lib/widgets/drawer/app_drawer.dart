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
            SizedBox(
              height: sizeScreen.height * 0.046,
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlatButton.icon(
                    onPressed: () => Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routeName),
                    label: Text('Home',
                        style: Theme.of(context).textTheme.headline1),
                    icon: Icon(
                      Icons.home,
                      color: Color.fromRGBO(42, 42, 42, 1),
                    ),
                  ),
                  if (_isTeacher)
                    FlatButton.icon(
                      icon: Icon(
                        Icons.people,
                        color: Color.fromRGBO(42, 42, 42, 1),
                      ),
                      label: Text(
                        'Request',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      onPressed: () => Navigator.of(context)
                          .pushReplacementNamed(RequestsScreen.routeName),
                    )
                ],
              ),
            ),

            // onPressed: () => Navigator.of(context)
            //     .pushReplacementNamed(RequestsScreen.routeName),

            //     Icon(Icons.people,color: ,),
            //     Text(
            //       'Requests',
            //       style: Theme.of(context).textTheme.headline1,
            //     )

            // ),

            Spacer(),
            Align(alignment: Alignment.bottomCenter, child: LogoutButton()),
          ],
        ),
      ),
    );
  }
}
