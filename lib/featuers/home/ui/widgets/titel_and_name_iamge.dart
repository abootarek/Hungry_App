import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_cubit.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_state.dart';

class TitleAndNameAndImage extends StatelessWidget {
  const TitleAndNameAndImage({
    super.key,
  });
  //ProfileResponse? profileResponse;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final cubit = context.read<ProfileCubit>();
        final userName = cubit.nameController.text.isNotEmpty
            ? cubit.nameController.text
            : 'User?';

        'https://cdn-icons-png.flaticon.com/512/3135/3135715.png';

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hungry?',
                  style: TextStyles.font60darkGreen,
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    cubit.imagePath != null && cubit.imagePath!.isNotEmpty
                        ? cubit.imagePath!
                        : 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              userName,
              style: TextStyles.font18gray.copyWith(
                color: ColorsApp.darkGreen,
              ),
            ),
          ],
        );
      },
    );
  }
}
