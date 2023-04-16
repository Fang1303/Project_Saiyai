import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saiyai/utils/global.colors.dart';
import 'package:saiyai/view/login.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.to(loginView());
    });
    return Scaffold(
      backgroundColor: GlobalColor.mainColor,
      body: Center(
        child: Image.asset('assets/images/aaaa.jpg'),
      ),
    );
  }
}
