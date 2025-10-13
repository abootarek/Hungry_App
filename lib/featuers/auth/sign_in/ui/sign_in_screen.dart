import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/button_app.dart';
import 'package:hungry/featuers/auth/sign_in/logic/cubit/login_cubit.dart';
import 'package:hungry/featuers/auth/sign_in/ui/widgets/container_social_medium.dart';
import 'package:hungry/featuers/auth/sign_in/ui/widgets/divider_row.dart';
import 'package:hungry/featuers/auth/sign_in/ui/widgets/form_emial_and_password.dart';
import 'package:hungry/featuers/auth/sign_in/ui/widgets/login_bloc_listner.dart';
import 'package:hungry/featuers/auth/sign_in/ui/widgets/row_text_signin.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        backgroundColor: ColorsApp.wihteColor,
        title: Text(
          'Sign In',
          style: TextStyles.font24BlackBold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            spacing: 18.sp,
            children: [
              FormEmailAndPassword(),
              AppTextButton(
                buttonHeight: 65,
                buttonText: 'SignIn',
                backgroundColor: ColorsApp.darkGreen,
                onPressed: () {
                  validatedGoLoading(context);
                },
                textStyle: TextStyles.font18WihtBold,
              ),
              RowTextAndButtonSignIn(),
              DividerRow(),
              ContainerSpacialMedium(),
              LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validatedGoLoading(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLogin(
            context,
          );
    }
  }
}
