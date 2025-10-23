import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/helper/extensions.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/button_app.dart';
import 'package:hungry/core/widgets/form_field_form.dart';
import 'package:hungry/featuers/auth/profile/data/model/profile_response.dart';
import 'package:hungry/featuers/auth/profile/logic/cubit/profile_cubit.dart';

class ItemProfile extends StatefulWidget {
  const ItemProfile({super.key, required this.profileResponse});

  final ProfileResponse profileResponse;

  @override
  State<ItemProfile> createState() => _ItemProfileState();
}

class _ItemProfileState extends State<ItemProfile> {
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() {
    final cubit = context.read<ProfileCubit>();
    final data = widget.profileResponse.data;
    cubit.nameController.text = data?.name ?? '';
    cubit.emailController.text = data?.email ?? '';
    cubit.addressController.text = data?.address ?? '';
  }

  Future<void> _onEditSavePressed(BuildContext context) async {
    final cubit = context.read<ProfileCubit>();

    if (_isEditing) {
      if (cubit.formKey.currentState!.validate()) {
        await cubit.updateProfile();
        await cubit.getProfile();

        if (mounted) setState(() => _isEditing = false);
      }
    } else {
      setState(() => _isEditing = true);
    }
  }

  void _onCancelPressed() {
    _loadUserData();
    setState(() => _isEditing = false);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<ProfileCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Form(
        key: cubit.formKey,
        child: SingleChildScrollView(
          child: Column(
            spacing: 18.sp,
            children: [
              Stack(children: [
                CircleAvatar(
                  backgroundColor: ColorsApp.lightGrayColor,
                  radius: 60,
                  child: CircleAvatar(
                    backgroundColor: ColorsApp.lightGrayColor,
                    radius: 55,
                    backgroundImage: cubit.imagePath != null &&
                            cubit.imagePath!.isNotEmpty
                        ? (cubit.imagePath!.startsWith('http')
                            ? NetworkImage(cubit.imagePath!)
                            : FileImage(File(cubit.imagePath!))
                                as ImageProvider)
                        : const NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png'),
                  ),
                ),
                if (_isEditing)
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorsApp.wihteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IconButton(
                            onPressed: () async {
                              await cubit.pickImage();
                            },
                            icon: const Icon(Icons.edit)),
                      ))
              ]),
              Text(
                cubit.nameController.text,
                style: TextStyles.font24WihtBold,
              ),
              Text(
                cubit.emailController.text,
                style: TextStyles.font18WihtBold,
              ),
              verticalSpace(30),
              AppTextFormField(
                controller: cubit.nameController,
                backgroundColor: ColorsApp.darkGreen,
                readOnly: !_isEditing,
                hintText: 'Name',
                keyboardType: TextInputType.name,
                inputTextStyle: TextStyles.font16WihtBold,
                hintStyle: TextStyles.font18WihtBold,
                suffixIcon: const Icon(Icons.person, color: Colors.white),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter your name' : null,
              ),
              AppTextFormField(
                validator: (value) =>
                    value!.isEmpty ? 'Please enter your email' : null,
                controller: cubit.emailController,
                backgroundColor: ColorsApp.darkGreen,
                readOnly: true,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                inputTextStyle: TextStyles.font16WihtBold,
                hintStyle: TextStyles.font18WihtBold,
                suffixIcon: const Icon(Icons.email, color: Colors.white),
              ),
              AppTextFormField(
                controller: cubit.addressController,
                backgroundColor: ColorsApp.darkGreen,
                readOnly: !_isEditing,
                hintText: 'Address',
                keyboardType: TextInputType.text,
                inputTextStyle: TextStyles.font16WihtBold,
                hintStyle: TextStyles.font18WihtBold,
                suffixIcon: const Icon(Icons.location_on, color: Colors.white),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter your address' : null,
              ),
              AppTextFormField(
                validator: (value) {},
                backgroundColor: ColorsApp.darkGreen,
                readOnly: true,
                hintText: 'Visa Card : **** **** **** 1234',
                keyboardType: TextInputType.phone,
                inputTextStyle: TextStyles.font16WihtBold,
                hintStyle: TextStyles.font18WihtBold,
                suffixIcon: const Icon(Icons.credit_card, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTextButton(
                    borderColor: ColorsApp.wihteColor,
                    buttonWidth: 150,
                    buttonHeight: 65,
                    buttonText: _isEditing ? 'Save Changes' : 'Edit Profile',
                    backgroundColor: ColorsApp.wihteColor,
                    onPressed: () => _onEditSavePressed(context),
                    textStyle: TextStyles.font16darkGreen,
                  ),
                  horizontalSpace(20),
                  if (_isEditing)
                    AppTextButton(
                      buttonWidth: 150,
                      buttonHeight: 65,
                      buttonText: 'Cancel',
                      backgroundColor: ColorsApp.red,
                      onPressed: _onCancelPressed,
                      textStyle: TextStyles.font18WihtBold,
                    )
                  else
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
              verticalSpace(10),
              AppTextButton(
                buttonWidth: 150,
                buttonHeight: 65,
                buttonText: 'Logout',
                backgroundColor: ColorsApp.blackLight,
                onPressed: () {
                  context.pushNamedAndRemoveUntil(
                    Routes.signInScreen,
                    predicate: (route) => false,
                  );
                },
                textStyle: TextStyles.font18WihtBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
