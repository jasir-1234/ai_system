import 'package:flutter/material.dart';

import '../wedgites/original_button.dart';

class introScreen extends StatelessWidget {
  const introScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(),
                Text(
                  'How are you today!',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2),
                ),
                Image.asset(
                  'assets/images/intro.gif',
                  width: 1500,
                  height: 340,
                ),
                originalButton(
                  text: 'Get Started',
                  onpressed: () => Navigator.of(context).pushNamed('Login'),
                  textColor: Colors.white,
                  bgColor: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
