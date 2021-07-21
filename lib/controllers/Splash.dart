import 'package:flutter/material.dart';
import '../config/size_config.dart';
import '../views/splash/index.dart';

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
    Future.delayed(Duration(milliseconds: 2000), () {});
    super.initState();
  }
}
