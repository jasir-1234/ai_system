import 'package:ai_based_medical_system/screens/auth_screen.dart';
import 'package:ai_based_medical_system/screens/intro_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xfff2f9fe),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.circular(25)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.circular(25)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.circular(25)),
        ),
      ),
      home: introScreen(),
      routes: {
        'Login': (context) => AuthScreen(authType: AuthType.login),
        'register': (context) => AuthScreen(authType: AuthType.register),
      },
    );
  }
}
