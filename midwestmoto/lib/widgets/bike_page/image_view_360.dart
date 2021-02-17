import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

// Image 360 Viewer
// ignore: must_be_immutable
class ImageView360Container extends StatefulWidget {
  // Properties
  final List<ImageProvider> imageList;
  // Constructor
  ImageView360Container({Key key, @required this.imageList})
      : super(
          key: key,
        );

  _ImageView360State createState() => _ImageView360State();
}

class _ImageView360State extends State<ImageView360Container> {
  // Temp Image List

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 950,
      margin: EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          ImageView360(
            key: UniqueKey(),
            imageList: widget.imageList,
            autoRotate: true,
            swipeSensitivity: 2,
            allowSwipeToRotate: true,
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: 950,
              height: 50,
              child: Icon(Icons.party_mode),
            ),
          ),
        ],
      ),
    );
  }
}
