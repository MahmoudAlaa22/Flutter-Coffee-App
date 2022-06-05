import 'package:flutter/material.dart';
import 'package:get/get.dart';

const _initialPage = 8;

class HomeControllerGetx extends GetxController {
  final pageCoffeeController =
      PageController(viewportFraction: 0.35, initialPage: _initialPage);
  final textController = PageController(initialPage: _initialPage);

  double currentPage =_initialPage.toDouble();
  double textPage = _initialPage.toDouble();

  @override
  void onInit() {
    pageCoffeeController.addListener(_coffeeScrollListener);
    textController.addListener(_textListener);
    super.onInit();
  }
  void _coffeeScrollListener() {
      currentPage = pageCoffeeController.page!;
      update();
  }

  void _textListener() {
    textPage = textController.page!;
  }


  @override
  void dispose() {
    pageCoffeeController.removeListener(_coffeeScrollListener);
    textController.removeListener(_textListener);
    pageCoffeeController.dispose();
    textController.dispose();
    super.dispose();
  }
}
