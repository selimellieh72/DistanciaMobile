import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/domain/user_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/user_bloc_get_user_data.dart';

class ProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: sizeScreen.width * 0.9,
      height: sizeScreen.height * 0.24,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(207, 94, 254, 1),
            Color.fromRGBO(8, 119, 204, 1),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 76, 255, 50),
            blurRadius: 20,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (_, state) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  state.getUserData().imageUrl,
                ),
                radius: 60,
                backgroundColor: Color.fromRGBO(112, 112, 112, 1),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FittedBox(
                    child: BlocBuilder<AuthBloc, AuthState>(
                      builder: (_, state) {
                        final UserData userData = state.getUserData();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    '${userData.firstName} ${userData.lastName}',
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                                Text(
                                  'Student',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            Text(
                              'Grade 11',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                            ),
                          ],
                        );
                      },
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
