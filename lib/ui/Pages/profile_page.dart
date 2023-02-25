import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';

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
            child: Icon(
              Icons.arrow_back_ios,
              color: primary,
            ),
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
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(
                              children: [
                                Container(
                                  width: 110,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFC7D3FF),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                ),
                                Positioned(
                                  top: 9,
                                  left: 13,
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
                        Container(
                          height: 30,
                          width: 110,
                          decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Ubah Profil",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Text("Level 13",
                                    style: Styles.headLineStyle2
                                        .copyWith(fontSize: 14)),
                              ),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              Image.asset("assets/icons/coin.png"),
                              Text(
                                "1000",
                                style: TextStyle(fontSize: 12),
                              ),
                              Gap(10),
                              Image.asset("assets/icons/diamond.png"),
                              Text(
                                "123",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              Container(
                                width: 200,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE8E8E8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("100/240"),
                              const Gap(90),
                              Text("Level Up"),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              Container(
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 214, 213, 213),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      padding: EdgeInsets.only(left: 10),
                                      child: Image.asset(
                                          "assets/icons/ribbon.png"),
                                    ),
                                    const Gap(15),
                                    Text("Rank 461",
                                        style: Styles.headLineStyle2
                                            .copyWith(color: primary)),
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
                const Gap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Tantangan saat ini",
                          style: Styles.headLineStyle3.copyWith(fontSize: 14)),
                    ),
                  ],
                ),
                const Gap(25),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 350,
                      height: 80,
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/icons/coin2.png",
                                scale: 0.7,
                              )
                            ],
                          ),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Weekly",
                                  style: Styles.headLineStyle2.copyWith(
                                      color: Colors.white, fontSize: 14)),
                              const Gap(5),
                              Text("Claim Voucher",
                                  style: Styles.headLineStyle4.copyWith(
                                      color: Colors.white, fontSize: 14)),
                            ],
                          ),
                          const Gap(130),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Selesai",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 350,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 211, 211),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/icons/coin2.png",
                                scale: 0.7,
                              )
                            ],
                          ),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Daily",
                                  style: Styles.headLineStyle2
                                      .copyWith(color: primary, fontSize: 14)),
                              const Gap(5),
                              Text("Baca Artikel",
                                  style: Styles.headLineStyle4
                                      .copyWith(color: primary, fontSize: 14)),
                            ],
                          ),
                          const Gap(130),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2/4",
                                style: Styles.headLineStyle2
                                    .copyWith(color: primary, fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 350,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 211, 211, 211),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/icons/coin2.png",
                                scale: 0.7,
                              )
                            ],
                          ),
                          const Gap(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Weekly",
                                  style: Styles.headLineStyle2
                                      .copyWith(color: primary, fontSize: 14)),
                              const Gap(5),
                              Text("Claim Voucher",
                                  style: Styles.headLineStyle4
                                      .copyWith(color: primary, fontSize: 14)),
                            ],
                          ),
                          const Gap(130),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Selesai",
                                style: Styles.headLineStyle2
                                    .copyWith(color: primary, fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GroupButton(
                      options: GroupButtonOptions(
                          spacing: 30,
                          selectedColor: primary,
                          unselectedColor: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      buttons: ["New", "Weekly", "Montly"],
                    ),
                  ],
                ),
                Divider(
                  color: Color.fromARGB(255, 126, 126, 126),
                  thickness: 0.3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
