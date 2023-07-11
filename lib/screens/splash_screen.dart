import 'package:clima_weather_app/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashScreenController splashScreenController =
      Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Center(
            child: Image.asset(
          "assets/splash.gif",
          height: 150,
          width: 150,
        )),
      ),
    );
  }
}