import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/form_field_form.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/featuers/auth/sign_up/logic/cubit/signup_cubit.dart';

class FormNameEmailAndPassword extends StatefulWidget {
  const FormNameEmailAndPassword({super.key});

  @override
  State<FormNameEmailAndPassword> createState() =>
      _FormNameEmailAndPasswordState();
}

class _FormNameEmailAndPasswordState extends State<FormNameEmailAndPassword> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        spacing: 18.sp,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextFormField(
            controller: context.read<SignupCubit>().nameController,
            hintText: 'User Name',
            keyboardType: TextInputType.name,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font15grayLightNormal,
            suffixIcon: const Icon(Icons.person, color: Colors.grey),
            validator: (value) =>
                value == null || value.isEmpty ? 'Enter your name' : null,
          ),
          AppTextFormField(
            controller: context.read<SignupCubit>().emailController,
            hintText: 'Email',
            suffixIcon: const Icon(Icons.email, color: Colors.grey),
            keyboardType: TextInputType.emailAddress,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font15grayLightNormal,
            validator: (value) =>
                value == null || value.isEmpty ? 'Enter your email' : null,
          ),
          AppTextFormField(
            controller: context.read<SignupCubit>().passwordController,
            isObscureText: isPasswordVisible,
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font15grayLightNormal,
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () =>
                  setState(() => isPasswordVisible = !isPasswordVisible),
            ),
            validator: (value) =>
                value == null || value.isEmpty ? 'Enter your password' : null,
          ),
          AppTextFormField(
            controller: context.read<SignupCubit>().phoneController,
            hintText: 'Phone',
            suffixIcon: const Icon(Icons.phone, color: Colors.grey),
            keyboardType: TextInputType.phone,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font15grayLightNormal,
            validator: (value) => value == null || value.isEmpty
                ? 'Enter your phone number'
                : null,
          ),
        ],
      ),
    );
  }
}
