import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/cache/sherd_prefrance.dart';
import 'package:hungry/core/helper/bloc_observer.dart';
import 'package:hungry/core/networking/di.dart';
import 'package:hungry/core/routing/app_routers.dart';
import 'package:hungry/hungry_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper.init();
  setupGetIt();

  Bloc.observer = MyBlocObserver();

  runApp(
    HungryApp(
      appRouter: AppRouter(),
    ),
  );
}
