import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocaleGetx extends GetxController{
  ///[changeLang] change language of app by give it value like => 'ar' Or 'en'.
  void changeLang(String codeLang){
    Get.updateLocale(Locale(codeLang));
  }
}