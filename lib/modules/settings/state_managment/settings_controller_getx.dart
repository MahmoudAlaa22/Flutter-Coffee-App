import 'package:get/get.dart';

import '../../../common/shared_preferences/share_pref_kwy.dart';
import '../../../common/shared_preferences/shared_pref_controller.dart';

class SettingControllerGetx extends GetxController {
  int radioValue = 1;

  @override
  void onInit() {
    // TODO: implement onInit
    final local = SharedPrefController.prefs.getString(PrefKey.localization);
    changeRadioValue(local == 'ar' ? 1 : 2);
    super.onInit();
  }

  void changeRadioValue(var v) {
    radioValue = v;
    update();
  }
}
