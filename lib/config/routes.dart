import 'package:flutter/widgets.dart';
import './../controllers/Intro.dart';
import './../controllers/Splash.dart';
import './../controllers/Dashboard.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  IntroScreen.routeName: (context) => IntroScreen(),
  DashboardScreen.routeName: (context) => DashboardScreen(),
};
