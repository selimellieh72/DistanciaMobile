import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/screens/both/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return FlatButton(
      onPressed: () async {
        await Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
        print('here');
        context.bloc<AuthBloc>().add(AuthEvent.logOut());
      },
      child: Container(
        height: _screenSize.height * 0.05,
        width: _screenSize.width * 0.26,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(248, 158, 69, 1),
              Color.fromRGBO(211, 27, 18, 1),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(255, 0, 0, 0.5),
              offset: Offset(0, 3),
              blurRadius: 12,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(child: SvgPicture.asset('assets/icons/exit.svg')),
            Text(
              'Log Out',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
