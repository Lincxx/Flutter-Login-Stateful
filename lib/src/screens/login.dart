import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override

  // _LoginScreenState createState() {
  //   return  _LoginScreenState();
  // }
  //^^ this is the same, but with a fat arrow function
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: <Widget>[
              emailField(),
              passwordField(),
              // Padding(
              //   padding: EdgeInsets.only(top: 25.0),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 25.0),
              // ),
              SizedBox(
                height: 25.0,
              ),
              submitButton(),
            ],
          ),
        ));
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Email Address', hintText: 'you@example.com'),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password', hintText: 'Password'),
      obscureText: false,
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {},
      child: Text('Submit'),
      color: Colors.blue,
      textColor: Colors.white,
    );
  }
}
