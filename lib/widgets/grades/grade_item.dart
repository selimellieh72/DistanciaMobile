import 'package:edulb/models/app_info.dart';
import 'package:edulb/models/user_data.dart';
import 'package:flutter/material.dart';

import 'package:edulb/screens/both/tab_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
    final appInfo = Provider.of<AppInfo>(context);

    return InkWell(
      onTap: appInfo.isEditting
          ? () => appInfo.addOrRemoveSelectedGradeId(id)
          : () {
              Navigator.of(context)
                  .pushNamed(TabsScreen.routeName, arguments: id);
            },
      child: userData.isTeacher
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                appInfo.isEditting
                    ? Stack(
                        children: [
                          Icon(
                            MdiIcons.book,
                            size: 100,
                            color: Color.fromRGBO(90, 90, 90, 1),
                          ),
                          Positioned.fill(
                            bottom: 15,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 45,
                                      color: Color.fromRGBO(90, 90, 90, 1),
                                    ),
                                  ],
                                ),
                                child: !appInfo.selectedGradesIds.contains(id)
                                    ? Icon(
                                        MdiIcons.checkCircleOutline,
                                        size: 25,
                                        color: Color.fromRGBO(230, 230, 230, 1),
                                      )
                                    : Icon(
                                        MdiIcons.checkCircle,
                                        size: 25,
                                        color: Color.fromRGBO(230, 230, 230, 1),
                                      ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Icon(
                        MdiIcons.book,
                        size: 100,
                        color: Color.fromRGBO(90, 90, 90, 1),
                      ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    discipline,
                    style: TextStyle(
                      color: Color.fromRGBO(42, 42, 42, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      letterSpacing: 0.5,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    gradeName,
                    style: TextStyle(
                      color: Color.fromRGBO(42, 42, 42, 1),
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.5,
                      wordSpacing: 2,
                    ),
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  MdiIcons.book,
                  size: 100,
                  color: Color.fromRGBO(90, 90, 90, 1),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    discipline,
                    style: TextStyle(
                      color: Color.fromRGBO(42, 42, 42, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      letterSpacing: 0.5,
                      wordSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
