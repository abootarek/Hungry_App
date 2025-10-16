import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_cubit.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_state.dart';
import 'package:hungry/featuers/auth/profile/ui/widgets/item_profile.dart';

class BlocBuilderProfile extends StatelessWidget {
  const BlocBuilderProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) =>
          current is ProfileLoading ||
          current is ProfileSuccess ||
          current is ProfileError,
      builder: (context, state) {
        return state.maybeWhen(
          profileLoading: () {
            return Center(
                child: SpinKitFadingCircle(
              color: ColorsApp.wihteColor,
              size: 50.0,
            ));
          },
          profileError: (apiErrorModel) {
            return Center(child: Text(apiErrorModel.message));
          },
          profileSuccess: (profileResponse) {
            final profileData = profileResponse.data ?? [];
            return ItemProfile(
              profileResponse: profileResponse,
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
