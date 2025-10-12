import 'package:flutter/material.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';

class DividerRow extends StatelessWidget {
  const DividerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: ColorsApp.grayLight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Or',
            style: TextStyles.font15grayLightNormal,
          ),
        ),
        Expanded(
          child: Divider(
            color: ColorsApp.grayLight,
          ),
        ),
      ],
    );
  }
}
