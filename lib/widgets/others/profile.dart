import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:edulb/models/user_data.dart';

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
                        color: Color.fromRGBO(42, 42, 42, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
