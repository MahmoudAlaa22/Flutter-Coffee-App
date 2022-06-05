import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/const/constant_variables.dart';
import '../../coffee/coffee_screen.dart';
import '../state_management/home_controller_getx.dart';

class ListOfCoffees extends StatelessWidget {
  const ListOfCoffees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final coffees = ConstantVariables.coffeeList;
    return GetBuilder<HomeControllerGetx>(
        init: HomeControllerGetx(),
        builder: (controller) {
          return Transform.scale(
            scale: 1.6,
            alignment: Alignment.bottomCenter,
            child: PageView.builder(
                controller: controller.pageCoffeeController,
                scrollDirection: Axis.vertical,
                onPageChanged: (v) {
                  if (v < coffees.length) {
                    if (coffees.length - 1 != v) {
                      controller.textController.animateToPage(v,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut);
                    }
                  }
                },
                itemCount: coffees.length,
                itemBuilder: (context, index) {
                  if (index == 0) return const SizedBox();
                  log('_currentPage is ${controller.currentPage}');
                  log('index is $index');
                  final result = controller.currentPage - index + 1;
                  log('result is $result');
                  final value = -0.4 * result + 1;
                  final opacity = value.clamp(0.0, 1.0);
                  log('value is $value');
                  return GestureDetector(
                    onTap: () {
                      log('coffees[index - 1].id is ${coffees[index - 1].id}');
                      Get.toNamed(
                          CoffeeScreen.routeName, arguments: coffees[index - 1]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                      child: Transform(
                          alignment: Alignment.bottomCenter,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.001)
                            ..translate(
                                0.0, Get.height / 2.6 * (1 - value).abs())
                            ..scale(value),
                          child: Opacity(
                              opacity: opacity,
                              child: Hero(
                                tag: '${coffees[index - 1].id}',
                                  child: Image.asset(coffees[index - 1].image)))),
                    ),
                  );
                }),
          );
        });
  }
}
