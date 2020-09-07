import 'package:flutter/material.dart';

import 'package:edulb/screens/auth_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduLB',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(43, 43, 43, 1),
        accentColor: Colors.blue,
        fontFamily: 'Poppins',
        buttonTheme: ThemeData.light().buttonTheme.copyWith(
              buttonColor: Colors.blue[800],
              textTheme: ButtonTextTheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
      ),
      home: AuthScreen(),
    );
  }
}
