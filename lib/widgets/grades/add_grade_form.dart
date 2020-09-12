import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/models/user_data.dart';
import 'package:flutter/material.dart';

import 'package:edulb/helpers/word_filtering_helper.dart';
import 'package:provider/provider.dart';

class AddGradeForm extends StatefulWidget {
  @override
  _AddGradeFormState createState() => _AddGradeFormState();
}

class _AddGradeFormState extends State<AddGradeForm> {
  final _formKey = GlobalKey<FormState>();

  var _isLoading = false;

  String _gradeName;

  String _discipline;

  String _validator(String value, String name) {
    if (value.isEmpty) {
      return 'Please enter a $name.';
    }
    if (WordHelper.wordContainsSymbols(value) && name == 'discipline') {
      return 'The $name cannot contain symbols.';
    }

    return null;
  }

  void _submitForm() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    setState(() {
      _isLoading = true;
    });

    try {
      await DBHELPER.addGrade(
        isTeacher: Provider.of<UserData>(context, listen: false).isTeacher,
        gradeName: _gradeName,
        discipline: _discipline,
      );
      Navigator.of(context).pop();
    } catch (_) {
      print(_);
      setState(() {
        _isLoading = false;
      });
      CustomBuilders.showErrorSnackBar(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Text(
                'Grade name:',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              maxLength: 20,
              decoration: InputDecoration(
                hintText: 'Grade 9',
              ),
              validator: (value) => _validator(
                value,
                'grade',
              ),
              onSaved: (gradeName) => _gradeName = gradeName,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Discipline:',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              maxLength: 14,
              decoration: InputDecoration(
                hintText: 'Physics',
              ),
              validator: (value) => _validator(
                value,
                'discipline',
              ),
              onSaved: (discipline) => _discipline = discipline,
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: _submitForm,
              child: _isLoading ? CircularProgressIndicator() : Text('Create!'),
            ),
          ],
        ),
      ),
    );
  }
}
