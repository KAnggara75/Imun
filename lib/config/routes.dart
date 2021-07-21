import 'package:flutter/widgets.dart';
import './../controllers/Intro.dart';
import './../controllers/Splash.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  IntroScreen.routeName: (context) => IntroScreen(),
};
