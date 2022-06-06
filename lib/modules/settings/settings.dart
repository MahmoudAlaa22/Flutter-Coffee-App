import 'package:coffee/common/theme/text_style.dart';
import 'package:coffee/modules/settings/const/settings_text_key.dart';
import 'package:coffee/modules/settings/state_managment/settings_controller_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/const/constant_variables.dart';
import '../../widgets/animated_button_widget/animated_button_widget.dart';
import '../../widgets/shadow_in_backgraund/shadow_in_splash.dart';
import 'widget/radio_list_tile_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const String routeName = "/SettingsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShadowInBackground(
        child: SafeArea(
          child: GetBuilder<SettingControllerGetx>(
              builder: ((controller) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20),
                  child: Column(
                    children: [
                      SizedBox(height: ConstantVariables.appBarHeight,
                      child: Row(
                        children: [
                          AnimatedButtonWidget(
                            onPressed: () =>Get.back(),
                            width: 50,
                            height: 50,
                            color: Colors.brown.shade100,
                            shadowDegree:ShadowDegree.dark,
                            child: const Icon(Icons.arrow_back_ios_sharp),
                          ),
                          const SizedBox(width: 20,),
                          Text(SettingsTextKey.settings.tr,
                          style: AppTextStyle.robotoTextStyle!.copyWith(
                            color: Colors.white,
                            fontSize: 30
                          ),
                          ),
                        ],
                      ),),
                      Row(
                        children: [
                          RadioListTileWidget(
                            title: SettingsTextKey.arabic,
                            value: 1,
                            groupValue: controller.radioValue,
                          ),
                          RadioListTileWidget(
                            title: SettingsTextKey.english,
                            value: 2,
                            groupValue: controller.radioValue,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }
}
