import 'package:flutter/material.dart';

import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override

  // _LoginScreenState createState() {
  //   return  _LoginScreenState();
  // }
  //^^ this is the same, but with a fat arrow function
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin{
  //Global key of the FormState
  final formKey = GlobalKey<FormState>();

  String email= '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
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
      validator: validatEmail, // we are not trying to envoke this, just passing a reference
      onSaved: (String value) {
        email = value;
        print(value);
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password', hintText: 'Password'),
      obscureText: false,
      validator: validatPassword, // we are not trying to envoke this, just passing a reference
      onSaved: (String value) {
        password = value;
        print(value);
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {
        if(formKey.currentState.validate()){
          formKey.currentState.save();
          // take *both* email and password
          // and post them somewhere
          print('Time to post $email and $password to my API');
          
        }
      },
      child: Text('Submit'),
      color: Colors.blue,
      textColor: Colors.white,
    );
  }
}
