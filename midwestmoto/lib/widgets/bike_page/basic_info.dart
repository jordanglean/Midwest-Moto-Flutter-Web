import 'package:flutter/material.dart';

// Basic Info Container
class BasicBikeInfo extends StatelessWidget {
  // Properties
  final bikeBrandName;
  final bikeModelName;
  final bikeRegYear;
  final bikeMiles;
  final bikeOwners;
  final bikeColor;

  // Constructor
  BasicBikeInfo({
    @required this.bikeBrandName,
    @required this.bikeModelName,
    @required this.bikeRegYear,
    @required this.bikeMiles,
    @required this.bikeOwners,
    @required this.bikeColor,
  });

  // Widget Build
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
                bikeBrandName.toUpperCase(),
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
                bikeModelName,
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
                                  'Reg Year:\n $bikeRegYear',
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
                                  'Miles:\n $bikeMiles',
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
                                  'Owners:\n $bikeOwners',
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
                                  'Colour:\n $bikeColor',
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
