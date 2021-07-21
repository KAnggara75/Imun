import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:imun/config/size_config.dart';
import 'package:imun/controllers/Splash.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends SplashController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 95, 103),
      body: Center(
        child: Container(
          height: getProportionateScreenHeight(500),
          width: getProportionateScreenWidth(350),
          child: Lottie.asset('./assets/splash.json'),
        ),
      ),
    );
  }
}
