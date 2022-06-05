import 'package:coffee/common/const/constant_variables.dart';
import 'package:coffee/modules/home/state_management/home_controller_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outlined_text/outlined_text.dart';

import '../../../widgets/auto_size_text_widget/auto_size_text_widget.dart';

class NameAndPrice extends StatelessWidget {
  const NameAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final coffees = ConstantVariables.coffeeList;
    return GetBuilder<HomeControllerGetx>(
      init: HomeControllerGetx(),
      builder: (controller) {
        return Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: 150,
            child: Column(
              children: [
                Expanded(
                    child: PageView.builder(
                        controller: controller.textController,
                        itemCount: ConstantVariables.coffeeList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Get.width * 0.2),
                            child: Center(
                              child: OutlinedText(
                                text: Text(
                                    coffees.length - 1 == index
                                        ? coffees[index - 1].name
                                        : coffees[index].name.tr,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.brown,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700)),
                                strokes: [
                                  OutlinedTextStroke(
                                      color: Colors.white, width: 5),
                                ],
                              ),
                            ),
                          );
                        })),
                AnimatedSwitcher(
                    key: Key(coffees[controller.currentPage.toInt()].name),
                    duration: const Duration(milliseconds: 200),
                    child: OutlinedText(
                      text: Text(
                          '\$${coffees[controller.currentPage.toInt() == coffees.length - 1 ? controller.currentPage.toInt() - 1 : controller.currentPage.toInt()].price}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                      strokes: [
                        OutlinedTextStroke(color: Colors.black, width: 3),
                      ],
                    )
                    // Text(
                    //   '\$${coffees[controller.currentPage.toInt() == coffees.length - 1 ?
                    //   controller.currentPage.toInt() - 1
                    //       : controller.currentPage.toInt()].price}',
                    //   style: const TextStyle(
                    //       fontSize: 20, fontWeight: FontWeight.w500,
                    //   color: Colors.white),
                    // ),
                    )
              ],
            ));
      },
    );
  }
}
