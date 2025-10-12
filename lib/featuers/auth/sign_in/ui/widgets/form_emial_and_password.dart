import 'package:flutter/material.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/form_field_form.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextFormField(
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
    );
  }
}
