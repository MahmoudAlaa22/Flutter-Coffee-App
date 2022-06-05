import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/settings/state_managment/settings_controller_getx.dart';
import '../shared_preferences/share_pref_kwy.dart';
import '../shared_preferences/shared_pref_controller.dart';


class AppBindings extends Bindings{
  @override
  void dependencies() {
    ///Check if any locale language has been stored.
    log('1');
    final locale=SharedPrefController.prefs.getString(PrefKey.localization);
    Get.updateLocale(Locale(locale??'en'));
    log('2');
    ///To initialize [Page] when app start
    Get.put(SettingControllerGetx());
  }

}