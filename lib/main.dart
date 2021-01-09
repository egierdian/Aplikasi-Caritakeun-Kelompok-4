import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:caritakeun_kelompok4/handler/auth_handler.dart';
import 'package:caritakeun_kelompok4/pages/wrapper.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser>.value(
      value: AuthHandler().getCurrentUser,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}

class MyUser {
  String uid;
  MyUser({
    this.uid,
  });
}
