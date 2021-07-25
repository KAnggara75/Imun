import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:imun/controllers/Navbar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends NavBarController {
  var tap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
        items: [
          Icon(
            Icons.coronavirus_outlined,
            size: 30,
            color: tap == 0 ? Color(0xFF06b3fa) : Color.fromARGB(255, 0, 0, 0),
          ),
          Icon(
            Icons.health_and_safety_sharp,
            size: 30,
            color: tap == 1 ? Color(0xFF06b3fa) : Color.fromARGB(255, 0, 0, 0),
          ),
          Icon(
            Icons.local_hospital,
            size: 30,
            color: tap == 2 ? Color(0xFF06b3fa) : Color.fromARGB(255, 0, 0, 0),
          ),
          Icon(
            Icons.analytics,
            size: 30,
            color: tap == 3 ? Color(0xFF06b3fa) : Color.fromARGB(255, 0, 0, 0),
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int tapedIndex) {
          setState(
            () {
              showPage = pageChooser(tapedIndex);
              tap = tapedIndex.toInt();
              print(tap);
            },
          );
        },
      ),
      body: showPage,
    );
  }
}
