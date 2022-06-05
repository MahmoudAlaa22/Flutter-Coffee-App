import 'dart:developer';

import 'package:coffee/common/assets/images.dart';
import 'package:coffee/common/const/constant_variables.dart';
import 'package:coffee/modules/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'const/splash_screen_colors.dart';
import '../../widgets/shadow_in_backgraund/shadow_in_splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "/SplashScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! < -20) {
            log('details.primaryDelta is ${details.primaryDelta}');
            Get.toNamed(HomeScreen.routeName);
          }
        },
        child: ShadowInBackground(
          child: Stack(
            children: [
              Positioned(
                  height: Get.height * 0.4,
                  left: 0,
                  right: 0,
                  top: Get.height * 0.13,
                  child: Hero(
                      tag: '6',
                      child: Image.asset(ConstantVariables.coffeeList[6].image))),
              Positioned(
                  height: Get.height * 0.5,
                  left: 0,
                  right: 0,
                  top: Get.height * 0.35,
                  child: Hero(
                      tag: '7',
                      child: Image.asset(
                        ConstantVariables.coffeeList[7].image,
                        fit: BoxFit.fill,
                      ))),
              Positioned(
                  height: Get.height * 0.7,
                  left: 0,
                  right: 0,
                  bottom: -Get.height * 0.4,
                  child: Hero(
                      tag: '8',
                      child: Image.asset(ConstantVariables.coffeeList[8].image))),
              Positioned(
                  height: 150,
                  left: 0,
                  right: 0,
                  top: Get.height * 0.51,
                  child: Hero(
                    tag: 'log',
                    child: Image.asset(
                      AppImages.logo,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
