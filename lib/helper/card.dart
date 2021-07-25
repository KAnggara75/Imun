import 'package:flutter/material.dart';
import 'package:imun/config/size_config.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({
    Key? key,
    required this.total,
    required this.penambahan,
    required this.update,
    required this.title,
    required this.icon,
    required this.bgcolor,
    required this.icolor,
  }) : super(key: key);
  final total;
  final penambahan;
  final IconData icon;
  final Color icolor, bgcolor;
  final String update, title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: bgcolor,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              child: Icon(
                icon,
                color: icolor,
                size: 75,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenHeight(20),
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Text(
                        "Total",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(15),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        " : ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(15),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        total,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(15),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Text(
                        "Penambahan",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(15),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        " : ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(15),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        penambahan,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(15),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Text(
                        "Update Pada",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(15),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        " : ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(15),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        update,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(15),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
