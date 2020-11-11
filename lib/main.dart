import 'package:flutter/material.dart';
import 'package:caritakeun_kelompok4/pages/beranda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Beranda(),
    );
  }
}
