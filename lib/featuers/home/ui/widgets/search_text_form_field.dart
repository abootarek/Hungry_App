import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';

class SearchAndFilter extends StatelessWidget {
  final VoidCallback onSearchTap;

  const SearchAndFilter({
    super.key,
    required this.onSearchTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSearchTap,
      child: Container(
        height: 55.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorsApp.wihteColor,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: ColorsApp.blackLight,
              size: 28,
            ),
            SizedBox(width: 10.w),
            Text(
              'Search products...',
              style: TextStyles.font16blackLightMedium,
            ),
            const Spacer(),
            Icon(
              Icons.filter_list_outlined,
              color: ColorsApp.darkGreen,
              size: 26,
            ),
          ],
        ),
      ),
    );
  }
}
