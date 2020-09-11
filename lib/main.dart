import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import 'package:edulb/screens/both/auth_screen.dart';
import 'package:provider/provider.dart';
import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/models/user_data.dart';
import 'package:edulb/screens/students/homework_screen.dart';
import 'package:edulb/screens/both/splash_screen.dart';
import 'package:edulb/screens/teachers/homework_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
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
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              headline5: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
      ),
      home: StreamBuilder<User>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return StreamProvider<UserData>.value(
                value:
                    DBHELPER.streamUser(FirebaseAuth.instance.currentUser.uid),
                child: Consumer<UserData>(
                  builder: (_, userData, __) {
                    if (userData == null || userData.isTeacher == null) {
                      return SplashScreen();
                    }
                    if (userData.isTeacher) {
                      return HomeworkScreenTeacher();
                    }
                    return HomeworkScreenStudent();
                  },
                ),
              );
            }
            return AuthScreen();
          }),
      routes: {
        HomeworkScreenStudent.routeName: (ctx) => HomeworkScreenStudent(),
      },
    );
  }
}
