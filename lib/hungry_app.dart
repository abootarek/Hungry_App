import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/routing/app_routers.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/core/theming/colors_app.dart';

class HungryApp extends StatelessWidget {
  final AppRouter appRouter;

  const HungryApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Hungry App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: ColorsApp.wihteColor,
            fontFamily: 'Cairo',
          ),
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.splashScreen,
        );
      },
    );
  }
}
