import 'package:flutter/material.dart';
import 'package:imun/controllers/Hospital.dart';

class HospitalBody extends StatefulWidget {
  const HospitalBody({Key? key}) : super(key: key);

  @override
  _HospitalBodyState createState() => _HospitalBodyState();
}

class _HospitalBodyState extends HospitalController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text("Hospital"),
      ),
    );
  }
}
