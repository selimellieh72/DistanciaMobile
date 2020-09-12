import 'package:edulb/helpers/custom_builders.dart';
import 'package:flutter/material.dart';

class GradesScreenStudent extends StatelessWidget {
  static const routeName = '/teachers/grades-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grades'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => CustomBuilders.showResponsiveBottomSheet(
          context: context,
          child: Column(
            children: [
              Chip(
                label: Text(
                  'Request to join a grade',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
