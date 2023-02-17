import 'package:berifood_app/utils/app_styles.dart';
import 'package:berifood_app/widgets/food_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TukarPoin extends StatelessWidget {
  const TukarPoin({super.key});

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
          title: Text("Tukar Poin",
              style: Styles.headLineStyle2.copyWith(color: primary)),
          // titleSpacing: 00.0,
          centerTitle: true,
          // toolbarHeight: 60.2,
          // toolbarOpacity: 0.8,
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //       bottomRight: Radius.circular(25),
          //       bottomLeft: Radius.circular(25)),
          // ),
          // elevation: 0.00,
          backgroundColor: Colors.white),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: primary),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Poin Anda",
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            const Gap(15),
                            Text("1000",
                                style: Styles.headLineStyle1.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Trabsaksi Anda",
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            const Gap(15),
                            Text("4",
                                style: Styles.headLineStyle1.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Text("Dapat ditukar dengan Point",
                  style: Styles.headLineStyle2.copyWith(
                    color: primary,
                  )),
              const Gap(30),

              //Food ContainerExchange Section

              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      FoodContainer(
                        titleText: "Sosis Mayo",
                        subtitleText:
                            "Sosi mayo dengan balutan\n saus mayo peju",
                        expTitle: "17 April 2025",
                        imgList: "assets/images/sosis_mayo.png",
                      ),
                      const Gap(20),
                      FoodContainer(
                          titleText: "Sate Ayam Merah",
                          subtitleText:
                              "Sate ayam dengan bakaran merah\n yang lezat",
                          expTitle: "20 Desember 2023",
                          imgList: "assets/images/sate.png"),
                      const Gap(20),
                      FoodContainer(
                          titleText: "Roti Bakar Keju",
                          subtitleText:
                              "Roti bakar nikmat dengan\n keju mozarella",
                          expTitle: "2 November 2023",
                          imgList: "assets/images/roti.png"),
                      const Gap(20),
                      FoodContainer(
                        titleText: "Sosis Mayo",
                        subtitleText:
                            "Sosi mayo dengan balutan\n saus mayo peju",
                        expTitle: "17 April 2025",
                        imgList: "assets/images/sosis_mayo.png",
                      ),
                      const Gap(20),
                      FoodContainer(
                          titleText: "Sate Ayam Merah",
                          subtitleText:
                              "Sate ayam dengan bakaran merah\n yang lezat",
                          expTitle: "20 Desember 2023",
                          imgList: "assets/images/sate.png"),
                      const Gap(20),

                      //override
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
