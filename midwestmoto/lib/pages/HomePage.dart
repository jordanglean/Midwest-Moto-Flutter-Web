import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(
          Icons.call_outlined,
          size: 30,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 4.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Scout')),
              FlatButton(onPressed: () {}, child: Text('FTR 1200')),
              FlatButton(onPressed: () {}, child: Text('Cruiser')),
              FlatButton(onPressed: () {}, child: Text('Bagger')),
              FlatButton(onPressed: () {}, child: Text('Touring')),
              FlatButton(onPressed: () {}, child: Text('Challenger')),
              VerticalDivider(),
              FlatButton(onPressed: () {}, child: Text('Other Brands'))
            ],
          ),
        ),
      ),
    );
  }
}
