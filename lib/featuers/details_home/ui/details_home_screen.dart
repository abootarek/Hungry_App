// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/button_app.dart';
import 'package:hungry/featuers/details_home/ui/widgets/item_container_detials.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    this.homeData,
  });
  final HomeData? homeData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.wihteColor,
        scrolledUnderElevation: 0,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Column(
          children: [
            ItemContainerDetails(homeData: homeData),
            verticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    '${homeData?.name}',
                    style: TextStyles.font16darkGreen,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  "\$${homeData?.price}0",
                  style: TextStyles.font16darkGreen,
                ),
              ],
            ),
            verticalSpace(10),
            Row(
              children: [
                Icon(Icons.star, color: ColorsApp.gren, size: 20.sp),
                horizontalSpace(5),
                Text(
                  '${homeData?.rating}',
                  style: TextStyles.font16darkGreen,
                ),
              ],
            ),
            verticalSpace(20),
            Text(
              'Details',
              style: TextStyles.font16darkGreen,
            ),
            verticalSpace(10),
            Text(
              "${homeData?.description}",
              style: TextStyles.font16darkGreen,
              textAlign: TextAlign.justify,
            ),
            verticalSpace(30),
            AppTextButton(
              buttonHeight: 65,
              buttonText: 'Buy Now',
              backgroundColor: ColorsApp.darkGreen,
              onPressed: () {},
              textStyle: TextStyles.font18WihtBold,
            ),
          ],
        ),
      ),
    );
  }
}
