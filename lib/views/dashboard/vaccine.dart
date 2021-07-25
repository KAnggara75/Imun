import 'package:flutter/material.dart';
import 'package:imun/config/constants.dart';
import 'package:imun/controllers/Vaccine.dart';

class VaccineBody extends StatefulWidget {
  const VaccineBody({Key? key}) : super(key: key);

  @override
  _VaccineBodyState createState() => _VaccineBodyState();
}

class _VaccineBodyState extends VaccineController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Text("Vaccine"),
      ),
    );
  }
}
