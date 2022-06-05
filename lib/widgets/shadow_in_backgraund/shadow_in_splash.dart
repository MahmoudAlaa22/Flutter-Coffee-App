import 'package:flutter/material.dart';

import '../../modules/splash_screen/const/splash_screen_colors.dart';

class ShadowInBackground extends StatelessWidget {
  const ShadowInBackground({Key? key, required this.child}) : super(key: key);
final Widget child;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:  [
        const SizedBox.expand(
          child: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: SplashScreenColors.backgroundColor)),
          ),
        ),
        child,
      ],
    );
  }
}
