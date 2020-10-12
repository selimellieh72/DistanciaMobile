import 'package:flutter/material.dart';

import 'package:flushbar/flushbar_helper.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:edulb/helpers/word_filtering_helper.dart';
import 'package:edulb/presentation/core/user_bloc_get_user_data.dart';
import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/helpers/already_exists_exception.dart';
import 'package:edulb/helpers/custom_builders.dart';
import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/presentation/core/create_button.dart';
import 'package:edulb/presentation/core/custom_input_feild.dart';
import 'package:edulb/presentation/others/form_label.dart';
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
    final _screeSize = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormLabel('Grade'),
            CustomInputFeild(
              hintText: 'Enter grade...',
              validator: (value) => _validator(
                value,
                'grade',
              ),
              maxLength: 20,
              onSaved: (gradeName) => _gradeName = gradeName,
            ),
            SizedBox(
              height: 15,
            ),
            FormLabel('Discipline'),
            CustomInputFeild(
              hintText: 'Enter discipline...',
              validator: (value) => _validator(
                value,
                'discipline',
              ),
              onSaved: (discipline) => _discipline = discipline,
              maxLength: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CreateButton(
                  text: 'Create',
                  isLoading: _isLoading,
                  onPressed: _submitForm,
                  gradientColors: [
                    Color.fromRGBO(94, 231, 254, 1),
                    Color.fromRGBO(8, 204, 60, 1),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
