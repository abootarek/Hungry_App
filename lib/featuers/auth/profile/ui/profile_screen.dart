import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_cubit.dart';
import 'package:hungry/featuers/auth/profile/ui/widgets/bloc_builder_profile.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkGreen,
      appBar: AppBar(
        backgroundColor: ColorsApp.darkGreen,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyles.font24WihtBold,
        ),
      ),
      body: LiquidPullToRefresh(
        onRefresh: () async {
          await context.read<ProfileCubit>().getProfile();
        },
        color: Colors.transparent,
        backgroundColor: ColorsApp.wihteColor,
        height: 160,
        animSpeedFactor: 2,
        showChildOpacityTransition: false,
        child: const SingleChildScrollView(
          physics:
              AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          child: BlocBuilderProfile(),
        ),
      ),
    );
  }
}
