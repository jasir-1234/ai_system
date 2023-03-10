import 'package:flutter/material.dart';

class originalButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final Color textColor;
  final bgColor;

  const originalButton(
      {super.key,
      required this.text,
      required this.onpressed,
      required this.textColor,
      required this.bgColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              )),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
