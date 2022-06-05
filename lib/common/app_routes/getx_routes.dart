import 'package:get/get.dart';

import '../../modules/coffee/coffee_screen.dart';
import '../../modules/home/home_screen.dart';
import '../../modules/settings/settings.dart';
import '../../modules/splash_screen/splash_screen.dart';

class AppPages {
  ///uncomment this row to make initial splash_screen when app start
  static const initial = SplashScreen.routeName;

  static final routes = [
    ///This row to make route to any page.
    GetPage(
      name: SplashScreen.routeName,
      page: () => const SplashScreen(),
    ),
    GetPage(
        name: HomeScreen.routeName,
        page: () => const HomeScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 700)),
    GetPage(
      name: SettingsScreen.routeName,
      page: () => const SettingsScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
        name: CoffeeScreen.routeName,
        page: () => const CoffeeScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(milliseconds: 500)
    ),
  ];
}
