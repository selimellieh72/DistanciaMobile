import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/helpers/word_filtering_helper.dart';
import 'package:edulb/widgets/others/form_label.dart';
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
    } catch (error) {
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
            TextFormField(
              decoration: InputDecoration(hintText: 'Physics'),
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
            TextFormField(
              maxLines: 4,
              maxLength: 160,
              decoration: InputDecoration(
                hintText: 'Page 130 do exercise 1.',
              ),
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
            Align(
              alignment: Alignment.center,
              child: FlatButton(
                onPressed: _submitForm,
                child: _isLoading
                    ? CircularProgressIndicator()
                    : Text(
                        'Create!',
                        style: TextStyle(fontSize: 18),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
