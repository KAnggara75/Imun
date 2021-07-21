import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './config/theme.dart';
import './config/routes.dart';
import './controllers/Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Disable Debud banner on right top app
      title: 'Imun',
      theme: theme(), //Theme for this App
      initialRoute: SplashScreen.routeName, //Redirect to Intro Screen
      routes: routes, //Setup Routes from routers.dart
    );
  }
}
