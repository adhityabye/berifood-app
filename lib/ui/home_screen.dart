import 'package:berifood_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hi, Bayu",
                        style: Styles.headLineStyle1
                            .copyWith(color: Color(0xFF8647ED)),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: primary,
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/bell.png"),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
                const Gap(25),

                //Search Bar Section Start

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

                //Search Bar Section End

                //Advertisement Section Start

                const Gap(30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: 340,
                  height: 150,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Mau Makanan Gratis ?\nYuk Kerjain Tatangan!",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white, fontSize: 20),
                              ),
                              const Gap(30),
                              Text(
                                "Semakin banyak  poin yang didapat,\nsemakin banyak makanan gratis!",
                                style: Styles.headLineStyle4.copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          // Column(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Image.asset(
                          //       "assets/icons/berifood_app_alt_white.png",
                          //       height: 20,
                          //       width: 100,
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                      Positioned(
                        height: 200,
                        width: 100,
                        right: 0,
                        bottom: -50,
                        child: Image.asset(
                          "assets/icons/mascot.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
