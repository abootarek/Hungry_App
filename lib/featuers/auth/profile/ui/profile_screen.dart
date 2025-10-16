import 'package:flutter/material.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/featuers/auth/profile/ui/widgets/bloc_builder_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkGreen,
      appBar: AppBar(
        backgroundColor: ColorsApp.darkGreen,
      ),
      body: SingleChildScrollView(
        child: BlocBuilderProfile(),
      ),
    );
  }
}
