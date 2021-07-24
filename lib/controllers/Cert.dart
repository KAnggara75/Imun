import 'package:flutter/material.dart';
import 'package:imun/config/size_config.dart';
import 'package:imun/views/dashboard/cert.dart';

class CertScreen extends StatelessWidget {
  const CertScreen({Key? key}) : super(key: key);
  static String routeName = "/cert";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CertBody(),
    );
  }
}

abstract class CertController extends State<CertBody> {
  var i;
}
