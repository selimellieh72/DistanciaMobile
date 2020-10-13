import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/presentation/auth/auth_screen.dart';
import 'package:edulb/presentation/homeWidget/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash-screen';
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (_, state) {
        state.map(
          initial: (_) {},
          unAuthenticated: (_) =>
              Navigator.of(context).pushReplacementNamed(AuthScreen.routeName),
          authenticated: (_) =>
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName),
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 175,
              right: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 210,
                    width: 210,
                    child: Image.asset('assets/IMAGE/distancia.png'),
                  ),
                  Text(
                    'Distancia',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(42, 42, 42, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
