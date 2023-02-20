import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/app_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Get.toNamed("/home");
            },
            // child: Icon(
            //   Icons.arrow_back_ios,
            //   color: primary,
            // ),
          ),
          title: Text("Tantangan",
              style: Styles.headLineStyle2.copyWith(color: primary)),
          centerTitle: true,
          backgroundColor: Colors.white),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(
                              children: [
                                Container(
                                  width: 100,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFC7D3FF),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                ),
                                Positioned(
                                  top: 7,
                                  left: 5,
                                  child: Container(
                                    width: 80,
                                    height: 80,
                                    child: Image.asset(
                                        "assets/icons/mascot_profile.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "Level 13",
                                  style: Styles.headLineStyle2,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/icons/coin.png"),
                              Text("1000"),
                              Gap(10),
                              Image.asset("assets/icons/diamond.png"),
                              Text("123"),
                            ],
                          ),
                        ],
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
