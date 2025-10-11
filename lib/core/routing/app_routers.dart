import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/featuers/layout/logic/cubit/lay_out_cubit.dart';
import 'package:hungry/featuers/layout/ui/layout_screen.dart';
import 'package:hungry/featuers/splash/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      // splash screen
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      // layout screen
      case Routes.layoutScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HungryCubit(),
            child: const LayoutScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
