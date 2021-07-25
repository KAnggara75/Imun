import 'package:flutter/material.dart';
import 'package:imun/helper/card.dart';
import 'package:imun/controllers/Stats.dart';
import 'package:imun/config/size_config.dart';

class StatsBody extends StatefulWidget {
  const StatsBody({Key? key}) : super(key: key);

  @override
  _StatsBodyState createState() => _StatsBodyState();
}

class _StatsBodyState extends StatsController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(39, 125, 161, 255),
      body: Container(
        margin: EdgeInsets.all(getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(10)),
        child: isShowingMainData
            ? ListView(
                children: [
                  DefaultCard(
                    title: "Total Konfirmasi",
                    icon: Icons.coronavirus,
                    icolor: Color.fromARGB(255, 249, 65, 68),
                    bgcolor: Color.fromARGB(255, 249, 199, 79),
                    total: total,
                    penambahan: penambahan,
                    update: update,
                  ),
                  DefaultCard(
                    title: "Dirawat",
                    icon: Icons.local_hospital,
                    icolor: Color.fromARGB(255, 39, 125, 161),
                    bgcolor: Color.fromARGB(255, 77, 144, 142),
                    total: rawat,
                    penambahan: trawat,
                    update: update,
                  ),
                  DefaultCard(
                    title: "Sembuh",
                    icon: Icons.health_and_safety_sharp,
                    icolor: Color.fromARGB(255, 67, 170, 139),
                    bgcolor: Color.fromARGB(255, 144, 190, 109),
                    total: recover,
                    penambahan: tsembuh,
                    update: update,
                  ),
                  DefaultCard(
                    title: "Meninggal",
                    icon: Icons.dehaze_rounded,
                    icolor: Color.fromARGB(255, 249, 65, 68),
                    bgcolor: Color.fromARGB(255, 249, 132, 74),
                    total: isShowingMainData ? dead : 0,
                    penambahan: tdead,
                    update: update,
                  )
                ],
              )
            : Center(
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  backgroundColor: Colors.grey,
                ),
              ),
      ),
    );
  }
}
