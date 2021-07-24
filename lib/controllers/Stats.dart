import 'package:flutter/material.dart';
import 'package:imun/config/size_config.dart';
import 'package:imun/views/dashboard/stats.dart';

class StatScreen extends StatelessWidget {
  const StatScreen({Key? key}) : super(key: key);
  static String routeName = "/stats";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: StatsBody(),
    );
  }
}

abstract class StatsController extends State<StatsBody> {
  var i;
}
