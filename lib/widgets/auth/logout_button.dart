import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () => FirebaseAuth.instance.signOut(),
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
