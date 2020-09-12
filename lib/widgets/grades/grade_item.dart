import 'package:edulb/screens/teachers/homework_screen.dart';
import 'package:flutter/material.dart';

class GradeItem extends StatelessWidget {
  final String gradeName;

  final String discipline;

  final int studentsNumber;

  GradeItem({
    @required this.gradeName,
    @required this.discipline,
    @required this.studentsNumber,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(HomeworkScreenTeacher.routeName),
      child: GridTile(
        child: Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blueGrey,
                ],
              ),
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            gradeName,
            // softWrap: false,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
        ),
        footer: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            color: Colors.blue.withOpacity(0.75),
          ),
          padding: const EdgeInsets.all(8.0),
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
