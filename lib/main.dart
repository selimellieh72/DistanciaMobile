import 'package:edulb/providers/user_data.dart';
import 'package:edulb/screens/homework_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import 'package:edulb/screens/auth_screen.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (ctx) => UserData(),
      child: MaterialApp(
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
        home: StreamBuilder<User>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return HomeworkScreen();
              }
              return AuthScreen(context);
            }),
        routes: {
          HomeworkScreen.routeName: (ctx) => HomeworkScreen(),
        },
      ),
    );
  }
}
