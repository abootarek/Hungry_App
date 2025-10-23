// hungry/featuers/auth/profile/ui/widgets/bloc_builder_profile.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/featuers/auth/profile/data/model/profile_response.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_cubit.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_state.dart';
import 'package:hungry/featuers/auth/profile/ui/widgets/item_profile.dart';

class BlocBuilderProfile extends StatelessWidget {
  const BlocBuilderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listenWhen: (previous, current) =>
          current is UpdateProfileSuccess || current is UpdateProfileError,
      listener: (context, state) async {
        state.whenOrNull(
          updateProfileSuccess: (_) async {
            // ✅ بعد التحديث نعيد تحميل البيانات
            await context.read<ProfileCubit>().getProfile();

            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Profile updated successfully!'),
                  backgroundColor: Colors.green,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          },
          updateProfileError: (error) {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(error.message),
                  backgroundColor: Colors.red,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          },
        );
      },
      child: BlocBuilder<ProfileCubit, ProfileState>(
        buildWhen: (previous, current) =>
            current is ProfileLoading ||
            current is ProfileSuccess ||
            current is ProfileError ||
            current is UpdateProfileLoading ||
            current is UpdateProfileSuccess ||
            current is ImagePickedSuccess,
        builder: (context, state) {
          return state.maybeWhen(
            profileLoading: () => _buildLoading(context),
            updateProfileLoading: () => _buildLoading(context),
            profileSuccess: (profile) => ItemProfile(profileResponse: profile),
            updateProfileSuccess: (profile) =>
                ItemProfile(profileResponse: profile),
            imagePickedSuccess: () {
              final cubit = context.read<ProfileCubit>();

              // ✅ نعرض آخر بيانات مع الصورة الجديدة
              final profile = ProfileResponse(
                code: 200,
                message: "Image Picked",
                data: DataUser(
                  name: cubit.nameController.text,
                  email: cubit.emailController.text,
                  address: cubit.addressController.text,
                  image: cubit.imagePath,
                ),
              );

              return ItemProfile(profileResponse: profile);
            },
            profileError: (error) => Center(child: Text(error.message)),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildLoading(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SpinKitFadingCircle(
            color: ColorsApp.wihteColor,
            size: 50.0,
          ),
        ),
      );
}
