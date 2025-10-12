import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/theming/colors_app.dart';

class ContainerSpacialMedium extends StatelessWidget {
  const ContainerSpacialMedium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsApp.grayLight),
        borderRadius: BorderRadius.circular(12.r),
        color: ColorsApp.wihteColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.g_mobiledata),
            iconSize: 45,
            onPressed: () {},
          ),
          VerticalDivider(
            color: ColorsApp.gray,
            thickness: 3,
            indent: 20,
            endIndent: 10,
          ),
          horizontalSpace(10.w),
          IconButton(
            icon: Icon(Icons.facebook),
            iconSize: 35,
            onPressed: () {},
          ),
          horizontalSpace(10.w),
          VerticalDivider(
            color: ColorsApp.gray,
            thickness: 3,
            indent: 20,
            endIndent: 10,
          ),
          horizontalSpace(10.w),
          IconButton(
            icon: Icon(Icons.apple),
            iconSize: 40,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
