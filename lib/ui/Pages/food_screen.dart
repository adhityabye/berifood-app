import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/app_styles.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Get.toNamed("/home");
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: primary,
            ),
          ),
          title: Text("Makanan",
              style: Styles.headLineStyle2.copyWith(color: primary)),
          centerTitle: true,
          backgroundColor: Colors.white),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                //Search Bar Start
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: 360,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 236, 236, 236)
                            .withOpacity(0.5),
                        spreadRadius: 7,
                        blurRadius: 10,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: primary),
                      Text(
                        "  Location",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                //Search Bar End

                //Voucher Start

                const Gap(15),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 236, 236, 236)
                            .withOpacity(0.5),
                        spreadRadius: 7,
                        blurRadius: 10,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/voucher.png"),
                      Text(
                        " Voucher Tersedia",
                        style: Styles.headLineStyle2
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const Gap(125),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),

                //Vourcher End

                //Food Start
                const Gap(25),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Beli dengan point", style: Styles.headLineStyle2),
                      Text(
                        "Sponsored",
                        style: Styles.textStyle,
                      ),
                    ],
                  ),
                ),

                //Food End
              ],
            ),
          ),
        ],
      ),
    );
  }
}
