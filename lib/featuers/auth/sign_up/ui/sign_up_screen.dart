import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/button_app.dart';
import 'package:hungry/featuers/auth/sign_in/ui/widgets/container_social_medium.dart';
import 'package:hungry/featuers/auth/sign_in/ui/widgets/divider_row.dart';
import 'package:hungry/featuers/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:hungry/featuers/auth/sign_up/ui/widgets/form_bloc_listner.dart';
import 'package:hungry/featuers/auth/sign_up/ui/widgets/form_name_emial_password.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsApp.wihteColor,
        title: Text(
          'Sign Up',
          style: TextStyles.font24BlackBold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            children: [
              FormNameEmailAndPassword(),
              verticalSpace(18),
              AppTextButton(
                buttonHeight: 65,
                buttonText: 'SignUp',
                backgroundColor: ColorsApp.darkGreen,
                onPressed: () {
                  validatedGoLoading(context);
                },
                textStyle: TextStyles.font18WihtBold,
              ),
              verticalSpace(50),
              DividerRow(),
              verticalSpace(50),
              ContainerSpacialMedium(),
              SignUpBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validatedGoLoading(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignUp();
    }
  }
}
