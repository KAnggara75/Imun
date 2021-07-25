import 'package:flutter/material.dart';
import '../config/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "Welcome to",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "i",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: Color.fromARGB(255, 68, 213, 173),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "MUN",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(225),
          width: getProportionateScreenWidth(225),
        ),
      ],
    );
  }
}
