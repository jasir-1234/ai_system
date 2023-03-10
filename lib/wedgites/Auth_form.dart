import 'package:ai_based_medical_system/services/auth.dart';
import 'package:flutter/material.dart';

import '../screens/auth_screen.dart';
import 'original_button.dart';

class AuthForm extends StatefulWidget {
  final AuthType authType;
  const AuthForm({Key? key, required this.authType}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  String _email = '', _password = '';
  AuthBase authBase = AuthBase();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: <Widget>[
            TextFormField(
              onChanged: (value) => _email = value,
              validator: (value) =>
                  value!.isEmpty ? 'Enter a valied email' : null,
              decoration: InputDecoration(
                  labelText: 'Enter your Email',
                  hintText: 'ex: test@gmail.com'),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              onChanged: (value) => _password = value,
              validator: (value) =>
                  value!.length < 6 ? 'your password not valid' : null,
              decoration: InputDecoration(
                labelText: 'Enter your password',
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 30,
            ),
            originalButton(
                text: widget.authType == AuthType.login ? 'Login' : 'Register',
                onpressed: () async {
                  if (_formkey.currentState!.validate()) {
                    if (widget.authType == AuthType.login)
                      await authBase.loginwithemailandpassword(
                          _email, _password);
                    else
                      await authBase.registerwithemailandpassword(
                          _email, _password);
                  }
                },
                textColor: Colors.white,
                bgColor: Colors.lightBlue),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {
                  if (widget.authType == AuthType.login)
                    Navigator.of(context).pushReplacementNamed('register');
                  else
                    Navigator.of(context).pushReplacementNamed('Login');
                },
                child: Text(
                  widget.authType == AuthType.login
                      ? 'Don\'t have an account?'
                      : 'You have an account?',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
