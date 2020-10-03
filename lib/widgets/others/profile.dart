import 'package:edulb/application/auth/auth_bloc.dart';
import '../core/user_bloc_get_user_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:edulb/domain/user_data.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(33)),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 150,
          width: 350,
          color: Color.fromRGBO(240, 240, 240, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<AuthBloc, AuthState>(
                builder: (_, state) => Flexible(
                  child: LayoutBuilder(builder: (_, constraints) {
                    final maxWidth = constraints.maxWidth;
                    return CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: maxWidth >= 45 ? 45 : 0,
                      backgroundImage: NetworkImage(
                        state.getUserData().imageUrl,
                      ),
                    );
                  }),
                ),
              ),
              Expanded(
                child: FittedBox(
                  child: BlocBuilder<AuthBloc, AuthState>(
                    builder: (_, state) {
                      final UserData userData = state.getUserData();
                      return Text(
                        '${userData.firstName} ${userData.lastName}',
                        style: TextStyle(
                          color: Color.fromRGBO(42, 42, 42, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
