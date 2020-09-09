import 'package:edulb/widgets/auth_form.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
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
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: AuthForm(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      33,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
