import 'package:edulb/application/auth/auth_bloc.dart';

import 'package:edulb/helpers/already_exists_exception.dart';
import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/helpers/db_helper.dart';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edulb/widgets/others/form_label.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:edulb/helpers/word_filtering_helper.dart';
import '../core/user_bloc_get_user_data.dart';

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
        isTeacher: context.bloc<AuthBloc>().state.getUserData().isTeacher,
        gradeName: _gradeName,
        discipline: _discipline,
        teacherId: FirebaseAuth.instance.currentUser.uid,
      );
      Navigator.of(context).pop();
      FlushbarHelper.createSuccess(
              message: 'Successfully added grade \'$_gradeName\'.')
          .show(context);
    } on AlreadyExistsException catch (error) {
      setState(() {
        _isLoading = false;
      });
      bool _isExited = await CustomBuilders.showErrorDialog(
        context: context,
        title: 'Name already exists',
        content: error.toString(),
      );
      if (_isExited) {
        Navigator.of(context).pop();
      }
    } catch (_) {
      setState(() {
        _isLoading = false;
      });
      print(_);

      CustomBuilders.showErrorSnackBar(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            FormLabel('Grade name'),
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
            FormLabel('Discipline'),
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
