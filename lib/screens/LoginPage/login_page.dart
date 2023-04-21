import 'package:book_tracker/screens/LoginPage/create_account.dart';
import 'package:book_tracker/screens/LoginPage/login_form.dart';
import 'package:book_tracker/widgets/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: Material(
        child: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: HexColor('C2EDFF'),
                  )),
              Text(isCreateAccountClicked != true ? 'Sign In' : 'Sign Up',
                  style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: 10),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                        width: 300,
                        height: 300,
                        child: isCreateAccountClicked != true
                            ? LoginForm(
                                formKey: _formKey,
                                emailTextController: _emailTextController,
                                passwordTextController: _passwordTextController)
                            : CreateAccount(
                                formKey: _formKey,
                                emailTextController: _emailTextController,
                                passwordTextController:
                                    _passwordTextController)),
                    TextButton.icon(
                        icon: Icon(Icons.portrait_rounded),
                        style: TextButton.styleFrom(
                            primary: HexColor('#fd5b23'),
                            textStyle: TextStyle(
                                fontSize: 18, fontStyle: FontStyle.italic)),
                        onPressed: () {
                          setState(() {
                            if (!isCreateAccountClicked) {
                              isCreateAccountClicked = true;
                            } else
                              isCreateAccountClicked = false;
                          });
                        },
                        label: Text(isCreateAccountClicked
                            ? 'Create Account'
                            : 'Already have an account')),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: HexColor('C2EDFF'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
