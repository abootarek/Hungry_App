import 'dart:async';

import 'package:flutter/material.dart';

import 'package:hungry/core/helper/extensions.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    // Animation for scaling the logo
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutCirc,
    );

    // Navigate to next screen after splash
    Timer(const Duration(seconds: 4), () {
      context.pushNamed(Routes.layoutScreen);
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Text('Hungry?', style: TextStyles.font60white),
            ),
          ),
          Image.asset('assets/images/image 1.png')
        ],
      ),
    );
  }
}
