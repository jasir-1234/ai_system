import 'package:flutter/material.dart';

import '../wedgites/Auth_form.dart';

enum AuthType { login, register }

class AuthScreen extends StatelessWidget {
  final AuthType authType;
  const AuthScreen({Key? key, required this.authType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(500),
              bottomRight: Radius.circular(500),
            ),
          ),
        ),
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Welcom!',
                  style: TextStyle(
                      color: Colors.black12,
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2),
                ),
                Container(
                  height: 200,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/img1.jpg'),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.blue, width: 10),
                      borderRadius: BorderRadius.circular(800)),
                ),
                AuthForm(
                  authType: authType,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
