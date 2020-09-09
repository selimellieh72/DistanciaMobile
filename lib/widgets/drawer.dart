import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            color: Theme.of(context).primaryColor,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  minRadius: 45.0,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: FittedBox(
                    child: FutureBuilder<DocumentSnapshot>(
                      future: FirebaseFirestore.instance
                          .collection('users')
                          .doc(FirebaseAuth.instance.currentUser.uid)
                          .get(),
                      builder: (context, snapshot) => Text(
                        snapshot.connectionState == ConnectionState.waiting
                            ? 'Loading...'
                            : '${snapshot.data.data()['firstName']} ${snapshot.data.data()['lastName']}',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlatButton.icon(
              onPressed: () => FirebaseAuth.instance.signOut(),
              icon: Icon(
                Icons.exit_to_app,
                color: Theme.of(context).primaryColor,
              ),
              label: Text(
                'Log Out',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
