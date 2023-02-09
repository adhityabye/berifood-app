import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 150),
              Image.asset("assets/icons/berifood_app_alt.png"),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
