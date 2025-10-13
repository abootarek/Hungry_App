import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/form_field_form.dart';
import 'package:hungry/featuers/auth/sign_in/logic/cubit/login_cubit.dart';

class FormEmailAndPassword extends StatefulWidget {
  const FormEmailAndPassword({
    super.key,
  });

  @override
  State<FormEmailAndPassword> createState() => _FormEmailAndPasswordState();
}

class _FormEmailAndPasswordState extends State<FormEmailAndPassword> {
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            suffixIcon: Icon(
              Icons.email,
              color: Colors.grey,
            ),
            keyboardType: TextInputType.emailAddress,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font15grayLightNormal,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          verticalSpace(16),
          AppTextFormField(
            isObscureText: isPasswordVisible,
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            keyboardType: TextInputType.emailAddress,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font15grayLightNormal,
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          verticalSpace(16),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordConfirmController,
            isObscureText: isConfirmPasswordVisible,
            hintText: 'Confirm Password',
            keyboardType: TextInputType.emailAddress,
            inputTextStyle: TextStyles.font15blackLightNormal,
            hintStyle: TextStyles.font15grayLightNormal,
            suffixIcon: IconButton(
              icon: Icon(
                isConfirmPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isConfirmPasswordVisible = !isConfirmPasswordVisible;
                });
              },
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your confirm password';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
