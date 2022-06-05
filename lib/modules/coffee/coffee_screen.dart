import 'dart:developer';

import 'package:coffee/common/const/constant_variables.dart';
import 'package:coffee/common/theme/text_style.dart';
import 'package:coffee/model/coffe_model.dart';
import 'package:coffee/widgets/auto_size_text_widget/auto_size_text_widget.dart';
import 'package:coffee/widgets/shadow_in_backgraund/shadow_in_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outlined_text/outlined_text.dart';

import '../../widgets/animated_button_widget/animated_button_widget.dart';

class CoffeeScreen extends StatelessWidget {
  const CoffeeScreen({Key? key}) : super(key: key);
  static const String routeName = "/CoffeeScreen";

  @override
  Widget build(BuildContext context) {
    final coffee = Get.arguments as CoffeeModel;
    log('coffee is ${coffee.id}');
    return Scaffold(
      body: ShadowInBackground(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: ConstantVariables.appBarHeight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AnimatedButtonWidget(
                    onPressed: () => Get.back(),
                    width: 50,
                    height: 50,
                    color: Colors.brown.shade100,
                    shadowDegree: ShadowDegree.dark,
                    child: const Icon(Icons.arrow_back_ios_sharp),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height - 100,
                width: Get.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                        left: 0,
                        height: 100,
                        width: Get.width,
                        child: Center(
                          child: OutlinedText(
                            text: Text(coffee.name.tr,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.brown, fontSize: 40,
                                  fontWeight:FontWeight.w700
                                )),
                            strokes: [
                              OutlinedTextStroke(color: Colors.white, width: 5),
                            ],
                          ),
                        )
                        ),
                    Positioned(
                        top: Get.height * 0.13,
                        height: 100,
                        width: Get.width,
                        child: Center(
                          child: OutlinedText(
                            text: Text('\$${coffee.price}',
                                textAlign:TextAlign.center ,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 35)),
                            strokes: [
                              OutlinedTextStroke(color: Colors.black, width: 5),
                            ],
                          ),
                        )),
                    Positioned(
                      left: 0,
                      top: Get.height * 0.3,
                      child: Hero(
                          tag: coffee.id,
                          child: Image.asset(
                            coffee.image,
                            width: 400,
                            height: 400,
                          )),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
