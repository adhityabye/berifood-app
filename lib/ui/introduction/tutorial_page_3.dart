import 'package:berifood_app/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class TutorialPageThree extends StatelessWidget {
  const TutorialPageThree({super.key});

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
                "assets/icons/illustration_3.png",
                width: 300,
                height: 300,
              ),
              const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  "Kamu bisa membeli makanan yang sudah dijual ulang oleh pengguna lainnya"),
              SizedBox(height: 170),
              InkWell(
                onTap: () => Get.toNamed("/login"),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Mulai",
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
            ],
          ),
        ),
      ),
    );
  }
}
