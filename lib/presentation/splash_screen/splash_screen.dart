import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/presentation/auth/auth_screen.dart';
import 'package:edulb/presentation/homeWidget/home_screen.dart';

class SplashScreen extends StatelessWidget {
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
        body: Center(
          child: Text('Loading...'),
        ),
      ),
    );
  }
}
