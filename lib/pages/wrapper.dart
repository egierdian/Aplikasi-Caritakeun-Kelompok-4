import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'login.dart';
import 'beranda.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentUser = Provider.of<MyUser>(context);

    // return either the Home or Authenticate widget
    if (currentUser == null) {
      return Login();
    } else {
      return Beranda();
    }
  }
  // @override
  // Widget build(BuildContext context) {
  //   FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
  //   return (firebaseUser == null) ? Login() : Beranda(firebaseUser);
  // }
}
