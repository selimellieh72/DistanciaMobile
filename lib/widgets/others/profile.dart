import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:edulb/models/user_data.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 150,
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Consumer<UserData>(
            builder: (_, data, __) => Flexible(
              child: LayoutBuilder(builder: (_, constraints) {
                final maxWidth = constraints.maxWidth;
                return CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: maxWidth >= 45 ? 45 : 0,
                  backgroundImage: data.imageUrl == ''
                      ? null
                      : NetworkImage(
                          data.imageUrl,
                        ),
                );
              }),
            ),
          ),
          Expanded(
            child: FittedBox(
              child: Consumer<UserData>(
                builder: (_, data, __) => Text(
                  '${data.firstName} ${data.lastName}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
