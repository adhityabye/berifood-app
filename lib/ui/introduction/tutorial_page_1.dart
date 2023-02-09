import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class TutorialPageOne extends StatelessWidget {
  const TutorialPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/illustration_1.png",
                width: 300,
                height: 300,
              ),
              const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  "Melalui platform Berifood, kita bisa mengurangi Food Waste, loh!"),
              SizedBox(height: 170),
              InkWell(
                onTap: () => Get.toNamed("/introduction2"),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Lanjut",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF8647ED),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Lewati",
                  style: TextStyle(
                      color: Colors.grey.shade500, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
