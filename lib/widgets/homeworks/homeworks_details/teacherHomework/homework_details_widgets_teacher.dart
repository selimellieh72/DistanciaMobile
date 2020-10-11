import 'package:edulb/domain/homeworks/homework_item.dart';
import 'package:edulb/widgets/homeworks/homeworks_details/teacherHomework/teacher_homework_pannel.dart';
import 'package:flutter/material.dart';

class HomeworksDetailsWidgetsTeacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final HomeworkItem _homework = ModalRoute.of(context).settings.arguments;
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: double.infinity,
          height: screenSize.height * 0.12,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(94, 231, 254, 1),
                Color.fromRGBO(8, 119, 204, 1),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Teacher:',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    FittedBox(
                      child: Text(
                        'Johnny Eid',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: FittedBox(
                  child: Text(
                    'deadDline',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenSize.height * 0.05,
        ),
        Text(
          'Submitted homeworks',
          style: Theme.of(context).textTheme.headline1,
        ),
        TeacherDetailsWidgetsPannel()
      ],
    );
  }
}
