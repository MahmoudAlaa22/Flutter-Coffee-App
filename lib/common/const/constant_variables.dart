import 'dart:math';

import 'package:coffee/modules/home/const/home_text_key.dart';
import 'package:flutter/material.dart';


import '../../model/coffe_model.dart';
import '../assets/images.dart';

double doubleInRange(
        {required Random source, required num start, required num end}) =>
    source.nextDouble() * (end - start) + start;

class ConstantVariables {
 static final appBarHeight = AppBar().preferredSize.height;
  static const _coffeeNameList = [
    HomeTextKey.caramelMacchiato, //1
    HomeTextKey.caramelColdDrink, //2
    HomeTextKey.icedCoffeMocha, //3
    HomeTextKey.caramelizedPecanLatte, //4
    HomeTextKey.toffeeNutLatte, //5
    HomeTextKey.capuchino, //6
    HomeTextKey.toffeeNutIcedLatte, //7
    HomeTextKey.americano, //8
    HomeTextKey.vietnameseStyleIcedCoffee, //9
    HomeTextKey.blackTeaLatte, //10
    HomeTextKey.classicIrishCoffee,
    HomeTextKey.toffeeNutCrunchLatte,
  ];
  static final List<CoffeeModel> coffeeList = List.generate(
      _coffeeNameList.length,
      (index) => CoffeeModel(
        id: index,
            image: '${AppImages.filePathPNG}/${index + 1}.png',
            name: _coffeeNameList[index], //(end -start )+start
            price: doubleInRange(source: Random(), start: 3, end: 10)
                .toStringAsFixed(2),
          ));
}
