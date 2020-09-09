import 'package:edulb/screens/homework_screen.dart';
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
        // backgroundColor: Color.fromRGBO(43, 43, 43, 1),
        primaryColor: Color.fromRGBO(43, 43, 43, 1),
        accentColor: Color.fromRGBO(112, 112, 112, 1),
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
      routes: {HomeworkScreen.routeName: (ctx) => HomeworkScreen()},
    );
  }
}
