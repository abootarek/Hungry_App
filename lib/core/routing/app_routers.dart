import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/networking/di.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/featuers/card/data/model/card_response.dart';
import 'package:hungry/featuers/card/logic/cubit/card_cubit.dart';
import 'package:hungry/featuers/card/ui/card_screen.dart';
import 'package:hungry/featuers/details_home/ui/details_home_screen.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_cubit.dart';
import 'package:hungry/featuers/auth/profile/ui/profile_screen.dart';
import 'package:hungry/featuers/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:hungry/featuers/auth/sign_in/ui/sign_in_screen.dart';
import 'package:hungry/featuers/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:hungry/featuers/auth/sign_up/ui/sign_up_screen.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';
import 'package:hungry/featuers/home/logic/cubit/home_cubit.dart';
import 'package:hungry/featuers/home/ui/home_screen.dart';
import 'package:hungry/featuers/layout/logic/cubit/lay_out_cubit.dart';
import 'package:hungry/featuers/layout/ui/layout_screen.dart';
import 'package:hungry/featuers/splash/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      // splash screen
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      // layout screen
      case Routes.layoutScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HungryCubit(),
            child: const LayoutScreen(),
          ),
        );
      // Home screen
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getAllProducts(),
            child: const HomeScreen(),
          ),
        );
      // sign up screen
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignupCubit(getIt()),
            child: const SignUpScreen(),
          ),
        );
      // sign in screen
      case Routes.signInScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const SignInScreen(),
          ),
        );
      // productDetailsScreen
      case Routes.productDetailsScreen:
        final homeData = arguments as HomeData?;
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(homeData: homeData),
        );
      // profile
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ProfileCubit(getIt())..getProfile(),
            child: const ProfileScreen(),
          ),
        );
      // addProductCartScreen
      case Routes.productCartScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => CardCubit(getIt())..getAllCard(),
            child: CardScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
