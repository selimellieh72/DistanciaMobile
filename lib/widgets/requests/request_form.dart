import 'package:edulb/helpers/already_exists_exception.dart';
import 'package:edulb/helpers/auth_validation.dart';

import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/helpers/does_not_exist_exception.dart';
import 'package:edulb/widgets/others/form_label.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

class RequestForm extends StatefulWidget {
  @override
  _RequestFormState createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  String _teacherEmail;

  String _gradeName;

  final _formKey = GlobalKey<FormState>();

  var _isLoading = false;

  void _saveForm(BuildContext context) async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    try {
      setState(() {
        _isLoading = true;
      });
      await DBHELPER.addRequest(
        FirebaseAuth.instance.currentUser.uid,
        _teacherEmail,
        _gradeName,
      );
      FlushbarHelper.createSuccess(message: 'Succesfully sent the request!');
    } on DoesNotExistException catch (error) {
      Navigator.of(context).pop();
      FlushbarHelper.createError(message: error.message).show(context);
    } on AlreadyExistsException catch (error) {
      Navigator.of(context).pop();
      FlushbarHelper.createError(message: error.message).show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            FormLabel('Teacher email'),
            TextFormField(
              decoration: InputDecoration(hintText: 'ex: example@example.com'),
              onSaved: (value) => _teacherEmail = value,
              validator: (value) => AuthValidation.validateEmail(value),
            ),
            SizedBox(
              height: 10,
            ),
            FormLabel('Grade name'),
            TextFormField(
              decoration: InputDecoration(hintText: 'ex: Grade 9'),
              onSaved: (value) => _gradeName = value,
              maxLength: 22,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please provide a grade';
                }
                if (value.length > 24) {
                  return 'Please provide a shorter grade name';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
                onPressed: () => _saveForm(context),
                child: _isLoading
                    ? CircularProgressIndicator()
                    : Text('Request!')),
          ],
        ),
      ),
    );
  }
}
