import 'package:flutter/material.dart';
import 'package:hungry/core/routing/app_routers.dart';
import 'package:hungry/hungry_app.dart';

void main() {
  runApp(
    HungryApp(
      appRouter: AppRouter(),
    ),
  );
}
