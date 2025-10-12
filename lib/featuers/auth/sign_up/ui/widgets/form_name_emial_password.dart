import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/form_field_form.dart';

class FormNameEmailAndPassword extends StatefulWidget {
  const FormNameEmailAndPassword({
    super.key,
  });

  @override
  State<FormNameEmailAndPassword> createState() => _FormNameEmailAndPassword();
}

class _FormNameEmailAndPassword extends State<FormNameEmailAndPassword> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.sp,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextFormField(
          hintText: 'User Name',
          keyboardType: TextInputType.name,
          inputTextStyle: TextStyles.font15blackLightNormal,
          hintStyle: TextStyles.font15grayLightNormal,
          suffixIcon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your user name';
            }
            return null;
          },
        ),
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
      ],
    );
  }
}
