import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hungry/core/helper/extensions.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/core/theming/colors_app.dart';

import 'package:hungry/core/theming/styles_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutCirc,
    );

    Timer(const Duration(seconds: 4), () {
      context.pushReplacementNamed(Routes.signInScreen);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkGreen,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 40),
            Expanded(
              child: ScaleTransition(
                scale: _animation,
                child: Center(
                  child: Text(
                    'Hungry?',
                    style: TextStyles.font60white.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Image.asset(
                'assets/images/image 1.png',
                height: 180,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
