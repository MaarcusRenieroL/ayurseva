import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ayurseva/main.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
    const SplashScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: AnimatedSplashScreen(
                splash: Image.asset('assets/images/logo.png'),
                nextScreen: const BottomNavbar(),
                splashTransition: SplashTransition.fadeTransition,
                pageTransitionType: PageTransitionType.fade,
                duration: 4000,
                splashIconSize: 300,
                backgroundColor: const Color.fromARGB(255, 197, 237, 219),
            ),
        );
    }
}