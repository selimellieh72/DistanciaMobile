import 'dart:io';

import 'package:flutter/material.dart';

import 'package:edulb/helpers/auth_validation.dart';
import 'package:edulb/widgets/images/image_picker.dart';

class AuthForm extends StatefulWidget {
  final Function submitData;

  AuthForm(
    this.submitData,
  );

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm>
    with SingleTickerProviderStateMixin {
  var _isLogin = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  var _isTeacher = false;
  var _email = '';
  var _password = '';
  var _firstName = '';
  var _lastName = '';
  var _isLoading = false;
  File _image;
  AnimationController _animationController;
  Animation<double> _fadeAnimation;
  Animation<Offset> _switchAnimation;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 300,
      ),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    _switchAnimation =
        Tween<Offset>(begin: Offset(0, -1.5), end: Offset(0, 0)).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildCustomTextField(
      String text, Function validation, Function onSave, bool isObscure,
      [TextEditingController controller]) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: TextFormField(
          obscureText: isObscure,
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
          onSaved: onSave,
        ),
      ),
    );
  }

  Widget _buildFadeTransition({Widget child}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
      constraints: BoxConstraints(
        minHeight: _isLogin ? 0 : 60,
        maxHeight: _isLogin ? 0 : 140,
      ),
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: child,
      ),
    );
  }

  void _setLoading(bool value) {
    setState(() {
      _isLoading = value;
    });
  }

  void _saveForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    print('we are here');
    if (_image == null && !_isLogin) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Please choose an image for your profile picture.',
          ),
          backgroundColor: Theme.of(context).errorColor,
        ),
      );
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
        image: _image,
        isLogin: _isLogin,
        isTeacher: _isTeacher,
        ctx: context,
        setLoading: _setLoading);
  }

  void setImage(File image) {
    _image = image;
  }

  void _changeMode() {
    setState(() => _isLogin = !_isLogin);
    if (!_isLogin) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: _isLogin ? 300 : 580,
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
                      _isLogin
                          ? null
                          : (email) => AuthValidation.validateEmail(email),
                      (String email) => _email = email,
                      false),
                  _buildFadeTransition(
                    child: SlideTransition(
                      position: _switchAnimation,
                      child: Row(
                        children: [
                          Expanded(
                            child: _buildCustomTextField(
                                'First name',
                                _isLogin
                                    ? null
                                    : (name) =>
                                        AuthValidation.validateName(name, true),
                                (String firstName) => _firstName = firstName,
                                false),
                          ),
                          Expanded(
                            child: _buildCustomTextField(
                                'Last name',
                                _isLogin
                                    ? null
                                    : (name) => AuthValidation.validateName(
                                        name, false),
                                (String lastName) => _lastName = lastName,
                                false),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildCustomTextField(
                    'Password',
                    _isLogin
                        ? null
                        : (password) =>
                            AuthValidation.validatePassword(password),
                    (String password) => _password = password,
                    true,
                    _passwordController,
                  ),
                  _buildFadeTransition(
                    child: SlideTransition(
                      position: _switchAnimation,
                      child: _buildCustomTextField(
                          'Confirm password',
                          _isLogin
                              ? null
                              : (secondPassword) =>
                                  AuthValidation.validateConfirmPassword(
                                      secondPassword, _passwordController.text),
                          null,
                          true),
                    ),
                  ),
                  _buildFadeTransition(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: FittedBox(
                              child: Text(
                                'Are you a teacher?',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
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
                  ),
                  if (!_isLogin)
                    _buildFadeTransition(child: ImagePicker(setImage)),
                  RaisedButton(
                    onPressed: _saveForm,
                    child: _isLoading
                        ? CircularProgressIndicator(
                            backgroundColor: Theme.of(context).primaryColor,
                          )
                        : Text(
                            _isLogin ? 'Log In' : 'Sign Up',
                            style: TextStyle(fontSize: 15),
                          ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    onPressed: _changeMode,
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
