import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/models/user_data.dart';
import 'package:edulb/widgets/requests/request_widget.dart';
import 'package:edulb/widgets/grades/grades_list.dart';
import 'package:edulb/widgets/others/app_drawer.dart';
import 'package:edulb/widgets/grades/add_grade.dart';

class GradesScreen extends StatefulWidget {
  static const routeName = '/teachers/grades';

  @override
  _GradesScreenState createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  final _buttonKey = GlobalKey<AddFloatingButtonState>();

  @override
  Widget build(BuildContext context) {
    final UserData userData = Provider.of<UserData>(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Your Grades',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              Expanded(
                child: GradesList(),
              ),
            ],
          ),
          FutureBuilder(
            future: Future.delayed(Duration(microseconds: 0)),
            builder: (_, snapshot) =>
                snapshot.connectionState == ConnectionState.waiting
                    ? Container()
                    : AppDrawer(
                        setIsDrawerOpened:
                            _buttonKey.currentState.setIsDrawerOpened,
                      ),
          ),
        ],
      ),
      floatingActionButton: AddFloatingButton(
        ctx: context,
        key: _buttonKey,
        isTeacher: userData.isTeacher,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class AddFloatingButton extends StatefulWidget {
  final bool isTeacher;
  final BuildContext ctx;

  const AddFloatingButton({
    @required Key key,
    @required this.isTeacher,
    @required this.ctx,
  }) : super(key: key);
  @override
  AddFloatingButtonState createState() => AddFloatingButtonState();
}

class AddFloatingButtonState extends State<AddFloatingButton> {
  var _isDrawerOpened = false;
  void _addButtonHandler(bool isTeacher, BuildContext ctx) {
    if (isTeacher) {
      CustomBuilders.showResponsiveBottomSheet(
        context: ctx,
        child: AddGrade(),
      );
    } else {
      CustomBuilders.showResponsiveBottomSheet(
        context: ctx,
        child: Request(),
      );
    }
  }

  void setIsDrawerOpened(bool value) {
    setState(() {
      _isDrawerOpened = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_isDrawerOpened) {
      return FloatingActionButton(
        onPressed: () => _addButtonHandler(widget.isTeacher, widget.ctx),
        child: Icon(Icons.add),
      );
    }
    return Container();
  }
}
