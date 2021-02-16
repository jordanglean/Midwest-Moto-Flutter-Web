import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';
import 'package:midwestmoto/widgets/bike_page/basic_info.dart';

// Image 360 Viewer
class ImageView360Container extends StatefulWidget {
  @override
  _ImageView360State createState() => _ImageView360State();
}

class _ImageView360State extends State<ImageView360Container> {
  // Temp Image List

  @override
  Widget build(BuildContext context) {
    List<ImageProvider> imageList = [];
    for (var i = 0; i < 7; i++) {
      if (i == 7) {
        break;
      }
      imageList.add(
          AssetImage('assets/images/bikes/indian/ftr_base/ftr_base_$i.jpg'));
    }
    return Container(
      width: 950,
      margin: EdgeInsets.all(20),
      child: ImageView360(
        key: UniqueKey(),
        imageList: imageList,
      ),
    );
  }
}
