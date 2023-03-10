

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class MyUser {
  final String uid;

  MyUser({required this.uid});

}
class AuthBase{
  MyUser  _userfromFireBase(User? user ){
    return MyUser(uid: user!.uid);

  }

  Future<MyUser>registerwithemailandpassword(String email,
      String password) async {
    final Credential = await FirebaseAuth.instance.createUserWithEmailAndPassword
      (email: email, password: password);

    return _userfromFireBase(Credential.user);

  }


  Future<MyUser?> loginwithemailandpassword(String email,
      String password) async {
    final authResult = await FirebaseAuth.instance.signInWithEmailAndPassword
      (email: email, password: password);
    return _userfromFireBase(authResult.user) ;
  }

  Future<void> logout() async {
    final authResult = await FirebaseAuth.instance.signOut();
  }
}