import 'package:berifood_app/widgets/voucher_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/app_styles.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

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
          title: Text("Voucher",
              style: Styles.headLineStyle2.copyWith(color: primary)),
          centerTitle: true,
          backgroundColor: Colors.white),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Image.asset("assets/icons/voucher.png"),
                    const Gap(10),
                    Text(
                      "Voucher Tersedia",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      VoucherStack(
                        mainText: "10%",
                        headLine: "Voucher",
                        descLine: "Diskon 10% untuk pembelian di restoran",
                      ),
                      VoucherStack(
                        mainText: "50%",
                        headLine: "Potongan Langsung",
                        descLine: "Diskon up to 55%",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
