import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  Widget _buildCustomTextField(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Card(
        color: Color.fromRGBO(112, 112, 112, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33),
        ),
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15),
          child: TextFormField(
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.emailAddress,
            textCapitalization: TextCapitalization.none,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: text,
              labelStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          _buildCustomTextField('ID'),
          _buildCustomTextField('Password'),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              'Login',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
