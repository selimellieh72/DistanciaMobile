import 'dart:async';
import 'package:edulb/models/app_info.dart';
import 'package:edulb/models/user_data.dart';
import 'package:flutter/material.dart';

import 'package:edulb/screens/both/grades_screen.dart';
import 'package:edulb/screens/teachers/requests.dart';
import 'package:edulb/widgets/auth/logout_button.dart';
import 'package:edulb/widgets/others/profile.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer>
    with SingleTickerProviderStateMixin<AppDrawer> {
  AnimationController _animationController;
  StreamController<bool> isSideBarOpenedeStreamedController;
  Stream<bool> isSideBarOpenedStream;
  StreamSink<bool> isSideBarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSideBarOpenedeStreamedController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedeStreamedController.stream;
    isSideBarOpenedSink = isSideBarOpenedeStreamedController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSideBarOpenedeStreamedController.close();
    isSideBarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSideBarOpenedSink.add(false);
      _animationController.reverse();
      Provider.of<AppInfo>(context, listen: false).setIsDrawerOpened(false);
    } else {
      isSideBarOpenedSink.add(true);
      _animationController.forward();
      Provider.of<AppInfo>(context, listen: false).setIsDrawerOpened(true);
    }
  }

  Widget _buildResponsiveFlatButton(
      {Widget button, String title, Function onPressed, Icon icon}) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= 150) {
          if (button != null) {
            return button;
          }
          return FlatButton.icon(
            onPressed: onPressed,
            icon: icon,
            label: Text(title),
          );
        }
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final _isTeacher = Provider.of<UserData>(context).isTeacher;
    return StreamBuilder<bool>(
      initialData: false,
      stream: isSideBarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data ? 0 : 0,
          right: isSideBarOpenedAsync.data ? 10 : screenWidth - 31,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Color.fromRGBO(42, 42, 42, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.white,
                        child: Profile(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      if (_isTeacher)
                        _buildResponsiveFlatButton(
                          title: 'Grades',
                          onPressed: () => Navigator.of(context)
                              .pushReplacementNamed(GradesScreen.routeName),
                          icon: Icon(Icons.grade),
                        ),
                      if (_isTeacher)
                        _buildResponsiveFlatButton(
                          title: 'Requests',
                          onPressed: () => Navigator.of(context)
                              .pushNamed(RequestsScreen.routeName),
                          icon: Icon(Icons.record_voice_over),
                        ),
                      Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child:
                            _buildResponsiveFlatButton(button: LogoutButton()),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 1),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: ClipPath(
                    // clipper: CustomMenuClipper(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: AnimatedIcon(
                            icon: AnimatedIcons.menu_close,
                            color: Color.fromRGBO(42, 42, 42, 1),
                            progress: _animationController.view,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// class CustomMenuClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Paint paint = Paint();
//     paint.color = Colors.white;

//     final width = size.width;
//     final height = size.height;

//     Path path = Path();
//     path.moveTo(0, 0);
//     path.quadraticBezierTo(0, 8, 10, 16);
//     path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
//     path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
//     path.quadraticBezierTo(0, height - 8, 0, height);

//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
