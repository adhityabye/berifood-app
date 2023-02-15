import 'package:berifood_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class FoodContainer extends StatelessWidget {
  const FoodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: 350,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 212, 211, 211).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.asset("assets/images/sosis_mayo.png"),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Roti Bakar Sosis Mayo",
                    style: Styles.headLineStyle3,
                  ),
                  const Gap(5),
                  Text("Roti bakar dengan toping sosis\nbakar dan mayonaise",
                      style: Styles.headLineStyle4.copyWith(fontSize: 12)),
                  const Gap(5),
                  Text("Kadaluarsa : 20 Desember 2023",
                      style: Styles.headLineStyle4.copyWith(fontSize: 12)),
                  Container(
                    width: 100,
                    height: 30,
                    child: Row(
                      children: [
                        Image.asset("assets/icons/coin.png"),
                        const Gap(5),
                        Text("4.000 Coin"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
