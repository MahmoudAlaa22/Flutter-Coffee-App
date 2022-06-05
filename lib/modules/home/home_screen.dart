
import 'package:coffee/modules/home/widgets/shadow_in_home.dart';
import 'package:coffee/widgets/animated_button_widget/animated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/assets/images.dart';
import '../../common/const/constant_variables.dart';
import '../settings/settings.dart';
import '../../widgets/shadow_in_backgraund/shadow_in_splash.dart';
import 'widgets/list_of_coffees.dart';
import 'widgets/name_and_price.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "/home_screen";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ShadowInBackground(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: ConstantVariables.appBarHeight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      AnimatedButtonWidget(
                        onPressed: () =>Get.back(),
                        width: 50,
                        height: 50,
                        color: Colors.brown.shade100,
                        shadowDegree:ShadowDegree.dark,
                        child: const Icon(Icons.arrow_back_ios_sharp),
                      ),
                      Hero(
                        tag: 'log',
                        child: Image.asset(
                          AppImages.logo,
                        ),
                      ),
                      AnimatedButtonWidget(
                        onPressed: () =>Get.toNamed(SettingsScreen.routeName),
                        width: 50,
                        height: 50,
                        color: Colors.brown.shade100,
                        shadowDegree:ShadowDegree.dark,
                        child: const Icon(Icons.settings),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: const [
                    ShadowInHome(),
                    ListOfCoffees(),
                    NameAndPrice()
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
