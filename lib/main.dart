import 'package:edulb/models/app_info.dart';
import 'package:edulb/screens/both/tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import 'package:edulb/screens/both/auth_screen.dart';
import 'package:provider/provider.dart';
import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/models/user_data.dart';
import 'package:edulb/screens/both/splash_screen.dart';
import 'package:edulb/screens/both/grades_screen.dart';
import 'package:edulb/screens/teachers/requests.dart';

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
    return StreamBuilder<User>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (_, snapshot) {
        if (snapshot.hasData) {
          return MultiProvider(
            providers: [
              StreamProvider<UserData>(
                create: (_) =>
                    DBHELPER.streamUser(FirebaseAuth.instance.currentUser.uid),
              ),
              ChangeNotifierProvider(
                create: (_) => AppInfo(),
              )
            ],
            builder: (ctx, _) => MainApp(isAuth: true),
          );
        }
        return MainApp(
          isAuth: false,
        );
      },
    );
  }
}

class MainApp extends StatelessWidget {
  final bool isAuth;

  const MainApp({Key key, this.isAuth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduLB',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(42, 42, 42, 1),
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
                fontSize: 30,
                color: Color.fromRGBO(42, 42, 42, 1),
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
      routes: {
        GradesScreen.routeName: (_) => GradesScreen(),
        TabsScreen.routeName: (_) => TabsScreen(),
        RequestsScreen.routeName: (_) => RequestsScreen(),
      },
      home: !isAuth
          ? AuthScreen()
          : Provider.of<UserData>(context) == null
              ? SplashScreen()
              : GradesScreen(),
    );
  }
}
