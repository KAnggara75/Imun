import 'dart:async';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:imun/config/constants.dart';
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
  late bool isShowingMainData;
  var data;
  late Timer timer;
  late var recover, total, rawat, dead;
  late var penambahan, trawat, tdead, tsembuh;
  late String update;

  var formatter = NumberFormat('#,###,000');

  @override
  void initState() {
    super.initState();
    makeRequest();
    isShowingMainData = false;
    timer = new Timer.periodic(
      new Duration(seconds: 60),
      (t) => makeRequest(),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    isShowingMainData = false;
    super.dispose();
  }

  makeRequest() async {
    final response = await http.get(
      BaseUrl.indo,
      headers: {'Accept': 'application/json'},
    );
    var data = jsonDecode(response.body);

    // Total
    total = formatter.format(data['total']['positif']);
    recover = formatter.format(data['total']['sembuh']);
    rawat = formatter.format(data['total']['dirawat']);
    dead = formatter.format(data['total']['meninggal']);

    // Penambahan
    tsembuh = formatter.format(data['penambahan']['sembuh']);
    trawat = formatter.format(data['penambahan']['dirawat']);
    tdead = formatter.format(data['penambahan']['meninggal']);
    penambahan = formatter.format(data['penambahan']['positif']);

    update = data['penambahan']['tanggal'];

    setState(() {
      isShowingMainData = true;
    });
  }
}
