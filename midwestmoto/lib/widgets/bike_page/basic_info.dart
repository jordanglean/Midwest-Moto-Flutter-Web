import 'package:flutter/material.dart';

// Basic Info Container
class BasicBikeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      width: 900,
      height: 550,
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          // Brand Name
          Row(
            children: [
              Text(
                'Indian Motorcycle'.toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              // Model Name
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '2022 FTR 1200',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          // Action Button Group
          Container(
            padding: EdgeInsets.all(25),
            child: Row(
              children: <Widget>[
                Container(
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Request A Call Back',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'General Enquiry',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Value My P/X',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Test Ride',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Finance Quote',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(padding: EdgeInsets.all(20)),
                // Bike Details
                Container(
                  margin: EdgeInsets.only(top: 25),
                  height: 300,
                  width: 400,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.today,
                                  size: 50,
                                ),
                                Text(
                                  'Reg Year:\n 2021',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.two_wheeler,
                                  size: 50,
                                ),
                                Text(
                                  'Miles:\n 0',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(18)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.sports_motorsports,
                                  size: 50,
                                ),
                                Text(
                                  'Owners:\n 1',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.colorize,
                                  size: 50,
                                ),
                                Text(
                                  'Colour:\n Black',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
