import 'package:flutter/material.dart';
import 'package:midwestmoto/pages/HomePage.dart';
import 'package:midwestmoto/pages/MotorcyclePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
