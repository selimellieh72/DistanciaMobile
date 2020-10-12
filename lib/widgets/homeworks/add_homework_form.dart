import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/helpers/word_filtering_helper.dart';
import 'package:edulb/widgets/core/create_button.dart';
import 'package:edulb/widgets/core/custom_input_feild.dart';
import 'package:edulb/widgets/others/form_label.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

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

  void _submitForm() async {
    if (!_formKey.currentState.validate()) {
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
      );
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
              onPressed: () => showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(
                  Duration(days: 365),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('19/20/2020'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: CreateButton(
                onPressed: _submitForm,
                isLoading: _isLoading,
              ),
            )
          ],
        ),
      ),
    );
  }
}
