import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShadowInHome extends StatelessWidget {
  const ShadowInHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 20,
        right: 20,
        bottom: -Get.height * 0.2,
        height: Get.height * 0.3,
        child: const DecoratedBox(
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
                color: Colors.brown, blurRadius: 90, offset: Offset.zero)
          ]),
        ));
  }
}
