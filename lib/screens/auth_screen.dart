import 'package:edulb/widgets/auth_form.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  void _submitData({
    @required String email,
    @required String password,
    @required String firstName,
    @required String lastName,
    @required bool isLogin,
    @required bool isTeacher,
  }) async {
    if (isLogin) {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } else {
      final _userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      _userCredential.user.uid;
      await FirebaseFirestore.instance
          .collection('users')
          .doc(_userCredential.user.uid)
          .set(
        {
          "firstName": firstName,
          "lastName": lastName,
          "email": email,
          "isTeacher": isTeacher
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  'EDU LB',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              AuthForm(_submitData),
            ],
          ),
        ),
      ),
    );
  }
}
