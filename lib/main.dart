import 'package:caritakeun_kelompok4/handler/auth_handler.dart';
import 'package:flutter/material.dart';
import 'package:caritakeun_kelompok4/pages/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthHandler.firebaseUserStream,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
