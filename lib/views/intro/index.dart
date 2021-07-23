import 'package:flutter/material.dart';
import './../../config/size_config.dart';
import '../../controllers/Intro.dart';
import '../../helper/intro_helper.dart';

class IntroBody extends StatefulWidget {
  const IntroBody({Key? key}) : super(key: key);

  @override
  _IntroBodyState createState() => _IntroBodyState();
}

class _IntroBodyState extends IntroController {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]['image'].toString(),
                text: splashData[index]['text'].toString(),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenHeight(20)),
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(flex: 1),
                  ElevatedButton.icon(
                    onPressed: () {
                      next();
                    },
                    icon: Icon(Icons.navigate_next_rounded),
                    label: Text("Continue"),
                  ),
                  Spacer(flex: 3),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
