import 'package:flutter/widgets.dart';
import './../controllers/Cert.dart';
import './../controllers/Intro.dart';
import './../controllers/Stats.dart';
import './../controllers/Navbar.dart';
import './../controllers/Splash.dart';
import './../controllers/Vaccine.dart';
import './../controllers/Hospital.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  IntroScreen.routeName: (context) => IntroScreen(),
  NavigationScreen.routeName: (context) => NavigationScreen(),
  StatScreen.routeName: (context) => StatScreen(),
  HospitalScreen.routeName: (context) => HospitalScreen(),
  VaccineScreen.routeName: (context) => VaccineScreen(),
  CertScreen.routeName: (context) => CertScreen(),
};
