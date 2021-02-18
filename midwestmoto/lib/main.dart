import 'package:flutter/material.dart';
import 'package:midwestmoto/pages/HomePage.dart';
import 'package:midwestmoto/pages/MotorcyclePage.dart';
// Route
import 'package:midwestmoto/RouteSettings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Router
  var route = RouterSet();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: homeRoute,
      onGenerateRoute: route.generateRoute,
      title: 'Midwest Moto - Indian Motorcycle Dealer',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
    );
  }
}
