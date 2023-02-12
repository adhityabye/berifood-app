import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/berifood_app_alt.png'),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 320,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Nama Pengguna",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(10),
                  Container(
                    height: 50,
                    width: 320,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Nama Pengguna",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(10),
                  Text(
                    "Lupa kata sandi?",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Gap(50),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF8647ED),
                ),
                child: TextButton(
                  onPressed: () => Get.toNamed('/home'),
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Gap(50),
              Column(children: [
                Center(
                  child: Text(
                    "Atau masuk dengan",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                    ),
                  ),
                ),
                Gap(35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/google.png'),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/facebook.png'),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/twitter.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(70),
                Center(
                    child: RichText(
                        text: TextSpan(
                  text: "Anggota baru? ",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: "Buat Akun",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ))),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
