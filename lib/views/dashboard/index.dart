import 'dart:io';

import 'package:flutter/material.dart';
import 'package:imun/controllers/Dashboard.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  _DashboardBodyState createState() => _DashboardBodyState();
}

class _DashboardBodyState extends DashboardController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Center(
          child: ElevatedButton.icon(
            onPressed: () {
              exit(0);
            },
            icon: Icon(Icons.exit_to_app_rounded),
            label: Text("Exit"),
          ),
        ),
      ),
    );
  }
}
