import 'package:flutter/material.dart';

import 'package:edulb/helpers/word_filtering_helper.dart';

class AuthForm extends StatefulWidget {
  final Function submitData;

  AuthForm(
    this.submitData,
  );

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  var _isLogin = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  var _isTeacher = false;
  var _email = '';
  var _password = '';
  var _firstName = '';
  var _lastName = '';

  Widget _buildCustomTextField(
      String text, Function validation, Function onSaved,
      [TextEditingController controller]) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: TextFormField(
          controller: controller == null ? null : controller,
          autocorrect: false,
          enableSuggestions: false,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.none,
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.only(bottom: -1, top: 2),
            errorStyle: TextStyle(
              fontSize: 12,
              color: Colors.red[900],
            ),
            labelText: text,
          ),
          validator: validation,
          onSaved: onSaved,
        ),
      ),
    );
  }

  void _saveForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    print(_email);
    print(_firstName);
    print(_lastName);
    print(_password);
    print(_isTeacher);
    widget.submitData(
      email: _email,
      password: _password,
      firstName: _firstName,
      lastName: _lastName,
      isLogin: _isLogin,
      isTeacher: _isTeacher,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: _isLogin ? 294 : 500,
      duration: Duration(milliseconds: 500),
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildCustomTextField(
                    'Email address',
                    (String value) {
                      if (value.isEmpty) {
                        return 'Please enter an email address.';
                      }
                      if (!value.contains('@')) {
                        return 'Please enter a valid email address.';
                      }
                      return null;
                    },
                    (String email) => _email = email,
                  ),
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
                            (String firstName) => _firstName = firstName,
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
                            (String lastName) => _lastName = lastName,
                          ),
                        ),
                      ],
                    ),
                  _buildCustomTextField(
                    'Password',
                    (String value) {
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
                    },
                    (String password) => _password = password,
                    _passwordController,
                  ),
                  if (!_isLogin)
                    _buildCustomTextField('Confirm password', (String value) {
                      if (_passwordController.text != value) {
                        return "Your passwords doesn't match";
                      }
                      return null;
                    }, null),
                  if (!_isLogin)
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Are you a teacher?',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Switch(
                            value: _isTeacher,
                            onChanged: (value) {
                              setState(
                                () {
                                  _isTeacher = value;
                                },
                              );
                            },
                          )
                        ],
                      ),
                    ),
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
                        color: Color.fromRGBO(0, 113, 227, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            33,
          ),
        ),
      ),
    );
  }
}
