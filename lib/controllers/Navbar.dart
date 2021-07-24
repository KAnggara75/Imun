import 'package:flutter/material.dart';
import 'package:imun/config/constants.dart';
import 'package:imun/controllers/Cert.dart';
import 'package:imun/controllers/Hospital.dart';
import 'package:imun/controllers/Vaccine.dart';
import './../config/size_config.dart';
import './Stats.dart';
import './../views/navbar.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);
  static String routeName = "/navigation";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: NavBar(),
    );
  }
}

abstract class NavBarController extends State<NavBar> {
  int pageIndex = 0;

  Widget showPage = new StatScreen();

  final StatScreen _statScreen = new StatScreen();
  final VaccineScreen _vaccineScreen = new VaccineScreen();
  final HospitalScreen _hospitalScreen = new HospitalScreen();
  final CertScreen _certScreen = new CertScreen();

  pageChooser(int page) {
    switch (page) {
      case 0:
        return _statScreen;
      case 1:
        return _vaccineScreen;
      case 2:
        return _hospitalScreen;
      case 3:
        return _certScreen;
      default:
        return new Container(
          color: kPrimaryColor,
          child: new Center(
            child: new Text("Page Not Availabel yet...!"),
          ),
        );
    }
  }
}
