import 'package:edulb/screens/teachers/homework_screen.dart';
import 'package:flutter/material.dart';

class GradeItem extends StatelessWidget {
  final String gradeId;
  final String gradeName;

  final String discipline;

  final int studentsNumber;

  GradeItem({
    @required this.gradeName,
    @required this.discipline,
    @required this.studentsNumber,
    @required this.gradeId,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HomeworkScreenTeacher.routeName);
      },
      child: GridTile(
        child: Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromRGBO(42, 42, 42, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            gradeName,
            overflow: TextOverflow.fade,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
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
            color: Color.fromRGBO(112, 112, 112, 1),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                discipline,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.people),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    studentsNumber.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
