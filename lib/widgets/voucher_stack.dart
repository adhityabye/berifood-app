import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class VoucherStack extends StatelessWidget {
  final String mainText;
  final String headLine;
  final String descLine;
  const VoucherStack(
      {super.key,
      required this.mainText,
      required this.headLine,
      required this.descLine});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Container(
          height: 150,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 236, 236, 236).withOpacity(0.5),
                spreadRadius: 7,
                blurRadius: 10,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                child: Center(
                    child: Text(mainText,
                        style: Styles.headLineStyle1
                            .copyWith(fontSize: 50, color: Colors.white))),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Styles.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 160),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(20),
                    Text(headLine,
                        style: Styles.headLineStyle2
                            .copyWith(color: Colors.black)),
                    const Gap(10),
                    Text(descLine,
                        style: Styles.headLineStyle3.copyWith(
                            color: Color.fromARGB(255, 163, 163, 163))),
                    const Gap(10),
                    Text("Kode Voucher : 123456789",
                        style: Styles.headLineStyle3.copyWith(
                            color: Color.fromARGB(255, 163, 163, 163),
                            fontSize: 11)),
                    const Gap(10),
                    Text("Berlaku sampai 31 Desember 2021",
                        style: Styles.headLineStyle3.copyWith(
                            color: Color.fromARGB(
                              255,
                              71,
                              71,
                              71,
                            ),
                            fontWeight: FontWeight.w500,
                            fontSize: 10)),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
