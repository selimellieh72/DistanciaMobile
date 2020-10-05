import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/widgets/drawer/app_drawer.dart';
import 'package:edulb/widgets/drawer/drawer_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  final String title;
  final Widget widget;
  final Widget addWidget;
  StackWidget(
    this.title,
    this.widget,
    this.addWidget,
  );
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 222, 222, 1),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Row(
                  children: [
                    DrawerIcon(),
                    Expanded(
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(fontSize: 40),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: double.infinity,
            margin: EdgeInsets.only(top: screenSize.height * 0.11),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: widget,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => CustomBuilders.showResponsiveBottomSheet(
          context: context,
          child: addWidget,
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
