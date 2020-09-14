import 'package:edulb/screens/both/grades_screen.dart';
import 'package:edulb/widgets/auth/logout_button.dart';
import 'package:edulb/widgets/others/profile.dart';
import 'package:flutter/material.dart';

class StudentAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Profile(),
          SizedBox(
            height: 10,
          ),
          FlatButton.icon(
            onPressed: () => Navigator.of(context)
                .pushReplacementNamed(GradesScreen.routeName),
            icon: Icon(Icons.people),
            label: Text('Materials'),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: LogoutButton(),
          )
        ],
      ),
    );
  }
}
