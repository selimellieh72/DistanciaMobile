import 'package:edulb/models/user_data.dart';
import 'package:flutter/material.dart';

import 'package:edulb/screens/both/tab_screen.dart';
import 'package:provider/provider.dart';

class GradeItem extends StatelessWidget {
  final String gradeName;

  final String id;

  final String discipline;

  final int studentsNumber;

  GradeItem({
    @required this.id,
    @required this.gradeName,
    @required this.discipline,
    @required this.studentsNumber,
  });

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(TabsScreen.routeName, arguments: id);
      },
      child: userData.isTeacher
          ? GridTile(
              child: Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(180, 180, 180, 1),
                ),
                child: Text(
                  gradeName,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    color: Color.fromRGBO(42, 42, 42, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    letterSpacing: 0.5,
                    wordSpacing: 2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              footer: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.red]),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          discipline,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(230, 230, 230, 1),
                              letterSpacing: -0.5,
                              wordSpacing: 0),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.people,
                          color: Color.fromRGBO(230, 230, 230, 1),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          studentsNumber.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(230, 230, 230, 1),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          : GridTile(
              child: Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(43, 43, 43, 1),
                        Color.fromRGBO(110, 110, 110, 1)
                      ]),
                ),
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      discipline,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        color: Color.fromRGBO(230, 230, 230, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        letterSpacing: 0.5,
                        wordSpacing: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
