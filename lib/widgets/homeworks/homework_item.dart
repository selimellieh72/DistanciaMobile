import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeworkItem extends StatefulWidget {
  HomeworkItem({
    @required this.title,
    @required this.instructions,
    @required this.date,
  });
  final String title;
  final String instructions;
  final DateTime date;

  @override
  _HomeworkItemState createState() => _HomeworkItemState();
}

class _HomeworkItemState extends State<HomeworkItem> {
  String _formatInstructions(String instructions) {
    if (instructions.length >= 23) {
      return instructions.substring(0, 20) + '...';
    }
    return instructions;
  }

  bool _isExpanded = false;
  bool expandState;

  void _toggleIsExpanded() {
    setState(
      () {
        _isExpanded = !_isExpanded;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          _toggleIsExpanded();
          print(_isExpanded);
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: Color.fromRGBO(112, 112, 112, 1),
              ),
              height: 80,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: FittedBox(
                            child: FittedBox(
                              child: Text(
                                widget.title,
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
                            _formatInstructions(widget.instructions),
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
                          DateFormat('E MMM\nh:m').format(widget.date),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: _isExpanded ? 150 : 0,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: Color.fromRGBO(42, 42, 42, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
