import 'package:flutter/material.dart';
// Main Pages
import 'package:midwestmoto/pages/HomePage.dart';
import 'package:midwestmoto/pages/ContactUsPage.dart';
import 'package:midwestmoto/pages/OffersPage.dart';
import 'package:midwestmoto/pages/ServicingPage.dart';
// Motorcycle Pages
import 'package:midwestmoto/pages/indian_motorcycles/ScoutPage.dart';
import 'package:midwestmoto/pages/indian_motorcycles/TouringPage.dart';
import 'package:midwestmoto/pages/indian_motorcycles/OtherBrandsPage.dart';
import 'package:midwestmoto/pages/indian_motorcycles/FTRPage.dart';
import 'package:midwestmoto/pages/indian_motorcycles/CruiserPage.dart';
import 'package:midwestmoto/pages/indian_motorcycles/ChallengerPage.dart';
import 'package:midwestmoto/pages/indian_motorcycles/BaggerPage.dart';
import 'package:midwestmoto/pages/MotorcyclePage.dart';
// Bike Model
import 'package:midwestmoto/models/motorcycle_model.dart';

// Route Const
// - main
const String homeRoute = '/';
const String contactUsRoute = '/contact-us';
const String offersRoute = '/offers';
const String servicingRoute = '/servicing';
// - motorcycle models
const String scoutModelsRoute = '/scouts';
const String touringModelsRoute = '/touring';
const String challengerModelsRoute = '/challenger';
const String baggerModelsRoute = '/bagger';
const String ftrModelsRoute = '/ftr';
const String cruiserModels = '/crusier';
// - other brands
const String otherModels = '/other-brands';
// - featured models
const String featuredRoute = '/featured';

// Routes
class RouterSet {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Main Navegations
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case contactUsRoute:
        return MaterialPageRoute(builder: (_) => ContactUsPage());
      case offersRoute:
        return MaterialPageRoute(builder: (_) => OffersPage());
      case servicingRoute:
        return MaterialPageRoute(builder: (_) => ServicingPage());
      // Indian Motorcycle Range Navegation
      case scoutModelsRoute:
        return MaterialPageRoute(builder: (_) => ScoutPage());
      case touringModelsRoute:
        return MaterialPageRoute(builder: (_) => TouringPage());
      case challengerModelsRoute:
        return MaterialPageRoute(builder: (_) => ChallengerPage());
      case baggerModelsRoute:
        return MaterialPageRoute(builder: (_) => BaggerPage());
      case ftrModelsRoute:
        return MaterialPageRoute(builder: (_) => FTRPage());
      case cruiserModels:
        return MaterialPageRoute(builder: (_) => CruiserPage());
      // Other Brands
      case otherModels:
        return MaterialPageRoute(builder: (_) => OtherBrandsPage());
      // Featured
      case featuredRoute:
        var featuredData = settings.arguments as Motorcycle;
        return MaterialPageRoute(builder: (_) => MotorcyclePage(featuredData));
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
