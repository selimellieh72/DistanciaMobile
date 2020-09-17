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
        children: [
          Consumer<UserData>(
            builder: (_, data, __) => FittedBox(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45.0,
                backgroundImage: data.imageUrl == ''
                    ? null
                    : NetworkImage(
                        data.imageUrl,
                      ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
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
