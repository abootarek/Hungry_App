import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/widgets/button_app.dart';
import 'package:hungry/featuers/card/data/model/card_response.dart';
import 'package:hungry/featuers/card/ui/widgets/container_counter.dart';

class ItemListView extends StatelessWidget {
  final Product product;

  const ItemListView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: ColorsApp.wihteColor,
        boxShadow: [
          BoxShadow(
            color: ColorsApp.lightGrayColor,
            blurRadius: 17,
            offset: const Offset(0, 12),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  product.image ?? '',
                  width: 80.w,
                  height: 80.h,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error, color: Colors.red),
                ),
                Text(product.name ?? '',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyles.font16blackLightMedium),
                verticalSpace(6),
                Text('\$${product.price ?? "0.00"}',
                    style: TextStyles.font16blackLightMedium),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10.w,
                    children: [
                      CounterContainer(onProsed: () {}, number: '+'),
                      Text('${product.quantity ?? 0}',
                          style: TextStyles.font16blackLightMedium),
                      CounterContainer(onProsed: () {}, number: '-'),
                    ],
                  ),
                  AppTextButton(
                    buttonWidth: 120,
                    buttonHeight: 55,
                    buttonText: 'Remove',
                    backgroundColor: ColorsApp.darkGreen,
                    onPressed: () {},
                    textStyle: TextStyles.font18WihtBold,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
