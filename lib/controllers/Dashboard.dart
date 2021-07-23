import 'package:flutter/material.dart';
import '../config/size_config.dart';
import '../views/dashboard/index.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static String routeName = "/dashboard";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: DashboardBody(),
    );
  }
}

abstract class DashboardController extends State<DashboardBody> {}
