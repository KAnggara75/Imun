import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/size_config.dart';
import '../views/splash/index.dart';
import './Dashboard.dart';
import './Intro.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}

abstract class SplashController extends State<SplashBody> {
  var intro;
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 3210), () {
      getPref();
    });
    super.initState();
  }

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      intro = preferences.getInt("intro");
      if (intro == 1) {
        Navigator.pushReplacementNamed(context, DashboardScreen.routeName);
      } else {
        Navigator.pushReplacementNamed(context, IntroScreen.routeName);
      }
    });
  }
}
