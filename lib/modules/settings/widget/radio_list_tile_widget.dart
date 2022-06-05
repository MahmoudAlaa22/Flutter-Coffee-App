import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/localizations/localizations_controller/locale_getx.dart';
import '../state_managment/settings_controller_getx.dart';

class RadioListTileWidget extends StatelessWidget {
  const RadioListTileWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
  }) : super(key: key);

  final String title;
  final int value;
  final int groupValue;

  @override
  Widget build(BuildContext context) {
    final settingGetx = Get.find<SettingControllerGetx>();
    final localeGetx = Get.put(LocaleGetx());

    return Flexible(
      child: RadioListTile(
          activeColor: Colors.black,
          contentPadding: EdgeInsets.zero,
          title: Text(
            title.tr,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
          value: value,
          groupValue: groupValue,
          onChanged: (v) {
            settingGetx.changeRadioValue(v);
            if (v == 1) {
              localeGetx.changeLang("ar");
            } else {
              localeGetx.changeLang("en");
            }
          }),
    );
  }
}
