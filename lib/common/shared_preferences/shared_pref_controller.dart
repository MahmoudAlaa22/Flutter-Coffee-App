import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefController {
  /// Data is persisted to disk asynchronously.
  static late SharedPreferences _prefs;

  /// Getter method for [_prefs].
  static SharedPreferences get prefs {
    if (_hasInit) {
      return _prefs;
    }
    throw 'You must call init() method before using prefs variable.';
  }

  /// Check if user has called [init] before or not.
  static bool _hasInit = false;

  /// Getter method of [_hasInit].
  static bool get hasInit => _hasInit;

  /// Init [prefs] attribute.
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    _hasInit = true;
  }
}
