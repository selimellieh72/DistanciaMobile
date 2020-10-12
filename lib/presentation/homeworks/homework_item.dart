import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:edulb/domain/homeworks/homework_item.dart' as domain;

import 'package:edulb/presentation/homeworks/homework_details_screen.dart';

class HomeworkItem extends StatefulWidget {
  final domain.HomeworkItem homework;
  const HomeworkItem({
    Key key,
    this.homework,
  }) : super(key: key);

  @override
  _HomeworkItemState createState() => _HomeworkItemState();
}

class _HomeworkItemState extends State<HomeworkItem> {
  String _formatTeacherName(
      {@required String firstName, @required String lastName}) {
    if (lastName.length >= 7 || firstName.length >= 7) {
      return '$lastName ${firstName.substring(0, 1)}.';
    }
    return '${lastName} ${firstName}';
  }

  String _formatHomeworkTitle(String title) {
    if (title.length >= 7) {
      return title.substring(0, 4) + '...';
    }
    return title;
  }

  String _formatInstructions(String instructions) {
    if (instructions.length >= 17 && !_isExpanded) {
      return instructions.substring(0, 13) + '...';
    }
    return instructions;
  }

  bool _isExpanded = false;
  bool expandState;

  domain.HomeworkItem _homework;

  void _toggleIsExpanded() {
    setState(
      () {
        _isExpanded = !_isExpanded;
      },
    );
  }

  Column _buildTitleWithDescription(String title, String description) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Container(
            child: FittedBox(
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        Flexible(
          child: Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    _homework = widget.homework;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.of(context).pushReplacementNamed(
          HomeworkDetailsScreen.routeName,
          arguments: _homework),
      child: AnimatedContainer(
        margin: EdgeInsets.only(bottom: 10),
        constraints: BoxConstraints(
          maxHeight: _isExpanded ? 500 : screenSize.height * 0.11,
          minHeight: _isExpanded ? 100 : screenSize.height * 0.11,
        ),
        duration: Duration(milliseconds: 500),
        padding: EdgeInsets.fromLTRB(19, 9, 19, 9),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(94, 231, 254, 1),
              Color.fromRGBO(8, 119, 204, 1),
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: _buildTitleWithDescription(
                _formatHomeworkTitle(_homework.title),
                _formatTeacherName(
                  lastName: _homework.teacher.lastName,
                  firstName: _homework.teacher.firstName,
                ),
              ),
            ),
            Flexible(
                fit: FlexFit.tight,
                flex: 4,
                child: _buildTitleWithDescription(
                  'Due To',
                  DateFormat('EEE@h:m').format(_homework.date),
                )),
            Flexible(
              fit: FlexFit.tight,
              flex: 5,
              child: _buildTitleWithDescription(
                  'Details', _formatInstructions(_homework.instructions)),
            ),
          ],
        ),
      ),
    );
  }
}
