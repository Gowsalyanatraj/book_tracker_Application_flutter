import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../widgets/input_decoration.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailTextController,
    required TextEditingController passwordTextController,
  })  : _formKey = formKey,
        _emailTextController = emailTextController,
        _passwordTextController = passwordTextController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _emailTextController,
              decoration: inputFieldDecoration(
                  label: 'Enter email', hintText: 'example@gmail.com'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _passwordTextController,
              obscureText: true,
              decoration:
                  inputFieldDecoration(label: 'Enter password', hintText: ''),
            ),
          ),
          SizedBox(height: 20.0),
          TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  backgroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 18)),
              onPressed: () {},
              child: Text('Create your Account'))
        ],
      ),
    );
  }
}
