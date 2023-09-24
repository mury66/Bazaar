import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:task/shared/themes/themes.dart';
class SplashScreen extends StatefulWidget {
  final Widget startWidget;
  const SplashScreen({super.key, required this.startWidget});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Widget startWidget=widget.startWidget;
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: PrimaryColour,
        duration: 1500,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType:PageTransitionType.rightToLeftWithFade,
        splashIconSize: 200,
        splash: const Image(image:AssetImage("assets/images/splash.png")),
        nextScreen: startWidget
    );
  }
}
