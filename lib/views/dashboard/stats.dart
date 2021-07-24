import 'package:flutter/material.dart';

class StatsBody extends StatefulWidget {
  const StatsBody({Key? key}) : super(key: key);

  @override
  _StatsBodyState createState() => _StatsBodyState();
}

class _StatsBodyState extends State<StatsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text("Info"),
      ),
    );
  }
}
