import 'package:edulb/screens/both/grades_screen.dart';
import 'package:edulb/screens/both/homework_screen.dart';
import 'package:edulb/screens/teachers/requests.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import 'package:edulb/screens/both/auth_screen.dart';
import 'package:provider/provider.dart';
import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/models/user_data.dart';
import 'package:edulb/screens/both/splash_screen.dart';

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
    return MultiProvider(
      providers: [
        StreamProvider<UserData>(
          create: (_) =>
              DBHELPER.streamUser(FirebaseAuth.instance.currentUser.uid),
        ),
        StreamProvider<User>(
          create: (_) => FirebaseAuth.instance.authStateChanges(),
        )
      ],
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
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                subtitle2: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                bodyText1: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                ),
              ),
        ),
        home: Builder(builder: (ctx) {
          final User user = Provider.of<User>(context);
          if (user != null) {
            print('here');
            return Builder(builder: (ctx) {
              final userData = Provider.of<UserData>(ctx);
              if (userData == null || userData.isTeacher == null) {
                return SplashScreen();
              }
              if (userData.isTeacher) {
                return GradesScreen();
              }
              return GradesScreen();
            });
          }
          print('or here');
          return AuthScreen();
        }),
        routes: {
          GradesScreen.routeName: (_) => GradesScreen(),
          HomeworkScreen.routeName: (_) => HomeworkScreen(),
          RequestsScreen.routeName: (_) => RequestsScreen(),
        },
      ),
    );
  }
}
