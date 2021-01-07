import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.network(
            'https://cdn.shopify.com/s/files/1/0403/0336/2215/files/MWM_WINGS_LOGO_Indian_Red-1-removebg_150x.png?v=1591694781',
            width: 70,
          ),
        ),
      ),
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
              VerticalDivider(),
              FlatButton(onPressed: () {}, child: Text('FTR 1200')),
              VerticalDivider(),
              FlatButton(onPressed: () {}, child: Text('Cruiser')),
              VerticalDivider(),
              FlatButton(onPressed: () {}, child: Text('Bagger')),
              FlatButton(onPressed: () {}, child: Text('Touring')),
              FlatButton(onPressed: () {}, child: Text('Challenger')),
              VerticalDivider(),
              FlatButton(onPressed: () {}, child: Text('Other Brands'))
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          FractionallySizedBox(
            heightFactor: 200,
            child: Container(
              width: double.infinity,
              child: Text(
                'SAMPLE CONTAINER',
                style: TextStyle(backgroundColor: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
