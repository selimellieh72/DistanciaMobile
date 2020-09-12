import 'dart:io';

import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/widgets/auth/auth_form.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

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
    @required File image,
    @required bool isLogin,
    @required bool isTeacher,
    @required BuildContext ctx,
    @required void Function(bool value) setLoading,
  }) async {
    setLoading(true);
    try {
      if (isLogin) {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
      } else {
        final _userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        _userCredential.user.uid;
        final _ref = FirebaseStorage.instance
            .ref()
            .child('user_profile_pics')
            .child('${FirebaseAuth.instance.currentUser.uid}.jpg');
        await _ref.putFile(image).onComplete;
        final _imageURL = await _ref.getDownloadURL();
        await FirebaseFirestore.instance
            .collection('users')
            .doc(_userCredential.user.uid)
            .set(
          {
            'firstName': firstName,
            'lastName': lastName,
            'email': email,
            'isTeacher': isTeacher,
            'imageURL': _imageURL,
          },
        );
      }
    } on FirebaseAuthException catch (error) {
      setLoading(false);
      Scaffold.of(ctx).showSnackBar(
        SnackBar(
          content: Text(
            error.message,
          ),
          backgroundColor: Theme.of(context).errorColor,
        ),
      );
    } catch (error) {
      setLoading(false);
      CustomBuilders.showErrorSnackBar(context);
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
