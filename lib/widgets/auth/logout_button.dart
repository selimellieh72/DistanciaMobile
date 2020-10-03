import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/screens/both/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () async {
        await Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
        print('here');
        context.bloc<AuthBloc>().add(AuthEvent.logOut());
      },
      icon: Icon(
        Icons.exit_to_app,
        color: Theme.of(context).primaryColor,
      ),
      label: Row(
        children: [
          Icon(
            Icons.exit_to_app,
            color: Colors.white,
          ),
          Text(
            'Log Out',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
