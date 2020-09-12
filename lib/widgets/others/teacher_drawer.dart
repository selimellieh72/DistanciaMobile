import 'package:edulb/screens/teachers/grades_screen.dart';
import 'package:edulb/screens/teachers/requests.dart';
import 'package:edulb/widgets/auth/logout_button.dart';
import 'package:edulb/widgets/others/profile.dart';
import 'package:flutter/material.dart';

class TeacherAppDrawer extends StatelessWidget {
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
            onPressed: () =>
                Navigator.of(context).pushNamed(GradesScreenTeacher.routeName),
            icon: Icon(Icons.people),
            label: Text('Grades'),
          ),
          FlatButton.icon(
            onPressed: () =>
                Navigator.of(context).pushNamed(RequestsScreen.routeName),
            icon: Icon(Icons.record_voice_over),
            label: Text('Requests'),
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
