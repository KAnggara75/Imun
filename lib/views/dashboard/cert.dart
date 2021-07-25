import 'package:flutter/material.dart';

class CertBody extends StatefulWidget {
  const CertBody({Key? key}) : super(key: key);

  @override
  _CertBodyState createState() => _CertBodyState();
}

class _CertBodyState extends State<CertBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Sertifikat"),
      ),
    );
  }
}
