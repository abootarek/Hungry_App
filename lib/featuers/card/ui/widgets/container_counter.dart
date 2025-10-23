// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';

class CounterContainer extends StatelessWidget {
  const CounterContainer({
    super.key,
    required this.number,
    required this.onProsed,
  });
  final String number;

  final VoidCallback onProsed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 36.w,
      decoration: BoxDecoration(
        color: ColorsApp.darkGreen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: onProsed,
        child: Text(
          textAlign: TextAlign.center,
          number,
          style: TextStyles.font18WihtBold,
        ),
      ),
    );
  }
}
