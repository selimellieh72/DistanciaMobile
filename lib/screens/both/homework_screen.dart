import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/widgets/homeworks/add_homework.dart';
import 'package:edulb/widgets/homeworks/homeworks_list.dart';
import 'package:edulb/widgets/others/app_drawer.dart';
import 'package:edulb/widgets/stack/stack_widget.dart';
import 'package:flutter/material.dart';

class HomeworkScreen extends StatelessWidget {
  static const routeName = '/Homework-screen';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final gradeId = ModalRoute.of(context).settings.arguments;
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
                Text(
                  'Homeworks',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 40),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
            height: double.infinity,
            margin: EdgeInsets.only(top: screenSize.height * 0.11),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FIlter By:',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Physics',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 25,
                    ),
                  ],
                ),
                Expanded(child: HomeworksList(gradeId)),
              ],
            ),
          ),
          AppDrawer(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => CustomBuilders.showResponsiveBottomSheet(
          context: context,
          child: AddHomework(gradeId),
        ),
      ),
    );
  }
}
