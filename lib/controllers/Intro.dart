import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './Dashboard.dart';
import '../config/constants.dart';
import '../views/intro/index.dart';
import '../config/size_config.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);
  static String routeName = "/intro";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: IntroBody(),
    );
  }
}

abstract class IntroController extends State<IntroBody> {
  int currentPage = 0;
  var intro;
  List<Map<String, String>> splashData = [
    {
      "text": "CoVid Live info Apps with Flutter!",
      "image": "assets/img/splash_1.png"
    },
    {
      "text": "Memberikan Live info terkait \nPandemi Covid di Indonesia",
      "image": "assets/img/splash_2.png"
    },
    {
      "text": "Cek Status Vaksin anda \ndan mengunduhnya",
      "image": "assets/img/splash_3.png"
    },
  ];

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xffffffff),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  next() {
    setPref();
    Navigator.pushReplacementNamed(context, DashboardScreen.routeName);
  }

  setPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("intro", 1);
    });
  }
}
