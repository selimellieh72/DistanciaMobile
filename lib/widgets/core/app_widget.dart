import 'package:edulb/application/app_drawer/app_drawer_bloc.dart';
import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/application/grades/edit_grades/edit_grades_bloc.dart';
import 'package:edulb/application/grades/grades_bloc.dart';

import 'package:edulb/injectable.dart';
import 'package:edulb/screens/both/auth_screen.dart';
import 'package:edulb/screens/both/grades_screen.dart';
import 'package:edulb/screens/both/home_screen.dart';
import 'package:edulb/screens/both/homework_details_screen.dart';
import 'package:edulb/screens/both/homework_screen.dart';
import 'package:edulb/screens/both/splash_screen.dart';
import 'package:edulb/screens/both/tab_screen.dart';
import 'package:edulb/screens/teachers/requests.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt.get<AuthBloc>()..add(AuthEvent.checkAuthStatus()),
        ),
        BlocProvider(
          create: (_) => AppDrawerBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
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
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                  subtitle2: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  bodyText1: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  headline5: TextStyle(
                    color: Color.fromRGBO(42, 42, 42, 1),
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                  ),
                  bodyText2: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  headline1: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(42, 42, 42, 1),
                  ),
                ),
          ),
          routes: {
            GradesScreen.routeName: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (_) => getIt.get<GradesBloc>()
                        ..add(GradesEvent.watchGradesStarted()),
                    ),
                    BlocProvider(
                      create: (_) => getIt.get<EditGradesBloc>(),
                    ),
                  ],
                  child: GradesScreen(),
                ),
            TabsScreen.routeName: (_) => TabsScreen(),
            RequestsScreen.routeName: (_) => RequestsScreen(),
            AuthScreen.routeName: (_) => AuthScreen(),
            Home.routeName: (_) => Home(),
            HomeworkScreen.routeName: (_) => HomeworkScreen(),
            HomeworkDetailsScreen.routeName: (_) => HomeworkDetailsScreen(),
          },
          home: SplashScreen()),
    );
  }
}
