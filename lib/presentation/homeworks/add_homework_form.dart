import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flushbar/flushbar_helper.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/helpers/word_filtering_helper.dart';
import 'package:edulb/presentation/core/create_button.dart';
import 'package:edulb/presentation/core/custom_input_feild.dart';
import 'package:edulb/presentation/others/form_label.dart';

class AddHomeworkForm extends StatefulWidget {
  final String id;

  AddHomeworkForm(this.id);

  @override
  _AddHomeworkFormState createState() => _AddHomeworkFormState();
}

class _AddHomeworkFormState extends State<AddHomeworkForm> {
  final _formKey = GlobalKey<FormState>();

  var _title;

  var _instructions;

  var _isLoading = false;

  DateTime _dateTime;

  void _submitForm() async {
    if (!_formKey.currentState.validate() || _dateTime == null) {
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });
    try {
      await DBHELPER.addHomework(
          gradeId: widget.id,
          title: _title,
          instructions: _instructions,
          dueDate: Timestamp.fromDate(_dateTime));
      Navigator.of(context).pop();
      FlushbarHelper.createSuccess(message: 'Homework added successfuly')
          .show(context);
    } catch (error) {
      print('here');
      // CustomBuilders.showErrorSnackBar(context);
      print(error);
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _pickDate() async {
    final _date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(
          Duration(days: 365),
        ));
    setState(() {
      _dateTime = _date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormLabel('Title'),
            CustomInputFeild(
              maxLength: 15,
              hintText: 'Physics',
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a title.';
                }
                if (WordHelper.wordContainsSymbols(value)) {
                  return 'Title should not contain a symbol.';
                }
                return null;
              },
              onSaved: (value) => _title = value,
            ),
            SizedBox(
              height: 10,
            ),
            FormLabel('Instructions'),
            CustomInputFeild(
              maxLines: 4,
              maxLength: 200,
              hintText: 'Page 130 do exercise 1.',
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some instructions.';
                }
                return null;
              },
              onSaved: (value) => _instructions = value,
            ),
            SizedBox(
              height: 20,
            ),
            FormLabel('Due Date'),
            RaisedButton(
              elevation: 15,
              color: Color.fromRGBO(233, 233, 233, 1),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color.fromRGBO(204, 204, 204, 1), width: 2),
                  borderRadius: BorderRadius.circular(20)),
              onPressed: _pickDate,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        _dateTime == null
                            ? DateFormat.yMd().format(DateTime.now())
                            : DateFormat.yMd().format(_dateTime),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        MdiIcons.calendarEdit,
                        size: 20,
                        color: Color.fromRGBO(42, 42, 42, 1),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CreateButton(
                  text: 'Create',
                  onPressed: _submitForm,
                  isLoading: _isLoading,
                  gradientColors: [
                    Color.fromRGBO(94, 231, 254, 1),
                    Color.fromRGBO(8, 119, 204, 1),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
