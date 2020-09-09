import 'package:flutter/material.dart';

import 'package:edulb/helpers/word_filtering_helper.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  var _isLogin = true;
  final _formKey = GlobalKey<FormState>();

  Widget _buildCustomTextField(String text, Function validation) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: TextFormField(
          autocorrect: false,
          enableSuggestions: false,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.none,
          decoration: InputDecoration(
            // // contentPadding: EdgeInsets.only(bottom: -1, top: 2),
            errorStyle: TextStyle(
              fontSize: 12,
              color: Colors.red[900],
            ),
            labelText: text,
          ),
          validator: validation,
        ),
      ),
    );
  }

  void _saveForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (!_isLogin)
              _buildCustomTextField('Email address', (String value) {
                if (value.isEmpty) {
                  return 'Please enter an email address.';
                }
                if (!value.contains('@')) {
                  return 'Please enter a valid email address.';
                }
                return null;
              }),
            if (!_isLogin)
              Row(
                children: [
                  Expanded(
                    child: _buildCustomTextField(
                      'First name',
                      (String value) {
                        if (value.isEmpty) {
                          return 'Please enter a First name.';
                        }
                        if (WordHelper.wordContainsSymbols(value)) {
                          return 'Please enter a valid first name (Symbols are not allowed).';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    child: _buildCustomTextField(
                      'Last name',
                      (String value) {
                        if (value.isEmpty) {
                          return 'Please enter a Last name.';
                        }
                        if (WordHelper.wordContainsSymbols(value)) {
                          return 'Please enter a valid last name (Symbols are not allowed).';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            _buildCustomTextField('Password', (String value) {
              if (value.isEmpty) {
                return 'Please enter a password.';
              }
              if (!WordHelper.hasUppercase(value)) {
                return 'Your password must atleast have one uppercase.';
              }
              if (!WordHelper.wordContainsSymbols(value)) {
                return 'Your password must have at least one symbol.';
              }
              if (value.length <= 6) {
                return 'Your password must be atleast 7 characters long.';
              }
              return null;
            }),
            _buildCustomTextField('Confirm password', null),
            RaisedButton(
              onPressed: _saveForm,
              child: Text(
                _isLogin ? 'Log In' : 'Sign Up',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              onPressed: () => setState(() => _isLogin = !_isLogin),
              child: Text(
                _isLogin
                    ? 'Don\'t have an account? Create one!'
                    : 'Already have an account? Log in!',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
