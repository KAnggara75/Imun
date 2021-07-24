import 'package:flutter/material.dart';
import 'package:imun/config/size_config.dart';
import 'package:imun/views/dashboard/vaccine.dart';

class VaccineScreen extends StatelessWidget {
  const VaccineScreen({Key? key}) : super(key: key);
  static String routeName = "/vaccine";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: VaccineBody(),
    );
  }
}

abstract class VaccineController extends State<VaccineBody> {
  var i;
}
