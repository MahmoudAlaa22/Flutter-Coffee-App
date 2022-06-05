import 'package:get/get.dart';
import 'arabic.dart';
import 'english.dart';

class AppLocale extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "ar":arabic,
    "en":english,
  };

}