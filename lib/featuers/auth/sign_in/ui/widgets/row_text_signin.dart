import 'package:flutter/material.dart';
import 'package:hungry/core/helper/extensions.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/core/theming/styles_app.dart';

class RowTextAndButtonSignIn extends StatelessWidget {
  const RowTextAndButtonSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyles.font15grayLightNormal,
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(Routes.signUpScreen);
          },
          child: Text(
            'Sign Up',
            style: TextStyles.font16darkGreen,
          ),
        ),
      ],
    );
  }
}
