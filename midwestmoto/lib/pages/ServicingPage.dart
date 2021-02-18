import 'package:flutter/material.dart';
// Global Widgets
import 'package:midwestmoto/widgets/main_navegation.bar.dart';

// Contact Us Page
class ServicingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Default Navegation
          MainNavegationBar(),
        ],
      ),
    );
  }
}
