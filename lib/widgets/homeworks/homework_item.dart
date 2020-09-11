import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeworkItem extends StatelessWidget {
  HomeworkItem({
    @required this.title,
    @required this.instructions,
    @required this.date,
  });
  final String title;
  final String instructions;
  final DateTime date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(33),
          color: Color.fromRGBO(112, 112, 112, 1),
        ),
        height: 80,
        child: Stack(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: FittedBox(
                      child: FittedBox(
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    alignment: Alignment.center,
                    child: Text(
                      instructions,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Text(
                    DateFormat('E MMM\nh:m').format(date),
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
