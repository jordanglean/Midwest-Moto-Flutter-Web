import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

// Bike Models
class Motorcycle {
  // Properties
  final String brandName;
  final String modelName;
  final String description;
  final double price;
  final int numberOfOwners;
  final int totalMiles;
  final String colour;
  final int regYear;
  final int numberOfImages;
  final String imageFolderPath;
  final String imagePatternName;
  final AssetImage previewImage;
  final bool featured;
  List<ImageProvider> imageList = [];

  // Constructor
  Motorcycle({
    @required this.brandName,
    @required this.modelName,
    @required this.description,
    @required this.price,
    @required this.numberOfOwners,
    @required this.totalMiles,
    @required this.colour,
    @required this.regYear,
    @required this.numberOfImages,
    @required this.imagePatternName,
    @required this.previewImage,
    @required this.imageFolderPath,
    @required this.featured,
  }) {
    createImageList();
  }
  // Create Image List for 360 view
  void createImageList() {
    for (var i = 0; i < numberOfImages; i++) {
      imageList.add(AssetImage(imageFolderPath + imagePatternName + '$i.jpg'));
    }
  }

  // Print All Details
  void printAllDetails() {
    print('== Motorcycle: $brandName $modelName ==');
    print(description);
  }
}
