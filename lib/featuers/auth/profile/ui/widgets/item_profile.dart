import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/cache/constans_cached.dart';
import 'package:hungry/core/cache/sherd_prefrance.dart';
import 'package:hungry/core/helper/app_regex.dart';
import 'package:hungry/core/helper/extensions.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/button_app.dart';
import 'package:hungry/core/widgets/form_field_form.dart';
import 'package:hungry/featuers/auth/profile/data/model/profile_response.dart';

class ItemProfile extends StatelessWidget {
  ItemProfile({super.key, this.profileResponse});
  ProfileResponse? profileResponse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Column(
        spacing: 18.sp,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image.network(
                '${profileResponse?.data?.image}',
                alignment: Alignment.center,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          verticalSpace(30),
          AppTextFormField(
            backgroundColor: ColorsApp.darkGreen,
            readOnly: true,
            hintText: '${profileResponse?.data?.name}',
            keyboardType: TextInputType.name,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font18WihtBold,
            suffixIcon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            validator: (value) {},
          ),
          AppTextFormField(
            backgroundColor: ColorsApp.darkGreen,
            readOnly: true,
            hintText: '${profileResponse?.data?.email}',
            keyboardType: TextInputType.name,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font18WihtBold,
            suffixIcon: Icon(
              Icons.email,
              color: Colors.white,
            ),
            validator: (value) {},
          ),
          AppTextFormField(
            backgroundColor: ColorsApp.darkGreen,
            readOnly: true,
            hintText: '${SharedPrefHelper.getData(key: SharedPrefKeys.phone)} ',
            keyboardType: TextInputType.phone,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font18WihtBold,
            suffixIcon: const Icon(
              Icons.phone,
              color: Colors.white,
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter valid phone number';
              }
              return null;
            },
          ),
          AppTextFormField(
            backgroundColor: ColorsApp.darkGreen,
            readOnly: true,
            hintText: profileResponse?.data?.address ?? 'Not found address',
            keyboardType: TextInputType.name,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font18WihtBold,
            suffixIcon: const Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            validator: (value) {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextButton(
                borderColor: ColorsApp.wihteColor,
                buttonWidth: 150,
                buttonHeight: 65,
                buttonText: 'Edit Profile',
                backgroundColor: ColorsApp.wihteColor,
                onPressed: () {},
                textStyle: TextStyles.font16darkGreen,
              ),
              horizontalSpace(20),
              AppTextButton(
                buttonWidth: 150,
                buttonHeight: 65,
                buttonText: 'Delete Profile',
                backgroundColor: ColorsApp.red,
                onPressed: () {},
                textStyle: TextStyles.font18WihtBold,
              ),
            ],
          ),
          AppTextButton(
            buttonWidth: 150,
            buttonHeight: 65,
            buttonText: 'Logout',
            backgroundColor: ColorsApp.blackLight,
            onPressed: () async {
              await SharedPrefHelper.logout();

              if (context.mounted) {
                context.pushNamedAndRemoveUntil(
                  Routes.signInScreen,
                  predicate: (route) => false,
                );
              }
            },
            textStyle: TextStyles.font18WihtBold,
          )
        ],
      ),
    );
  }
}
