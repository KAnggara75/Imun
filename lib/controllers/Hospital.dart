import 'package:flutter/material.dart';
import 'package:imun/config/size_config.dart';
import 'package:imun/views/dashboard/hospital.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({Key? key}) : super(key: key);
  static String routeName = "/hospital";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HospitalBody(),
    );
  }
}

abstract class HospitalController extends State<HospitalBody> {
  var i;
}
