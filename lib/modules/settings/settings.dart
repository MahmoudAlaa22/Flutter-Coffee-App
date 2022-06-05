import 'package:coffee/modules/settings/const/settings_text_key.dart';
import 'package:coffee/modules/settings/state_managment/settings_controller_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/const/constant_variables.dart';
import '../../widgets/shadow_in_backgraund/shadow_in_splash.dart';
import 'widget/radio_list_tile_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const String routeName = "/SettingsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShadowInBackground(
        child: Padding(
          padding:  EdgeInsets.only(top: ConstantVariables.appBarHeight),
          child: GetBuilder<SettingControllerGetx>(
              builder: ((controller) {
                return Row(
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
                );
              })),
        ),
      ),
    );
  }
}
