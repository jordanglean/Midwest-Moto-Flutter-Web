import 'package:flutter/material.dart';
// Global Imports
import 'package:midwestmoto/widgets/main_navegation.bar.dart';

// Scout Motorcycle Page
class ScoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MainNavegationBar(),
        ],
      ),
    );
  }
}
