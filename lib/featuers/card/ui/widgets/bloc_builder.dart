import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/core/widgets/button_app.dart';
import 'package:hungry/featuers/card/logic/cubit/card_cubit.dart';
import 'package:hungry/featuers/card/logic/cubit/card_state.dart';
import 'package:hungry/featuers/card/ui/widgets/list_view_builder.dart';

class BlocBuilderCustom extends StatelessWidget {
  const BlocBuilderCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardCubit, CardState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(
            child: SpinKitFadingCircle(
              color: ColorsApp.darkGreen,
              size: 50.0,
            ),
          ),
          success: (cardResponse) {
            final cardData = cardResponse.data;

            if (cardData == null || cardData.items == null) {
              return const Center(
                child: Text("No items found in your cart"),
              );
            }

            return Column(
              children: [
                ListViewBuilderCustom(dataProduct: cardData),
                verticalSpace(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Total', style: TextStyles.font16blackLightMedium),
                        Text('\$${cardData.totalPrice ?? "0.00"}',
                            style: TextStyles.font16darkGreen),
                      ],
                    ),
                    AppTextButton(
                      buttonWidth: 130,
                      buttonHeight: 65,
                      buttonText: 'Checkout',
                      backgroundColor: ColorsApp.darkGreen,
                      onPressed: () {},
                      textStyle: TextStyles.font18WihtBold,
                    ),
                  ],
                ),
              ],
            );
          },
          failure: (apiErrorModel) {
            print('❌ فشل جلب سلة التسوق: ${apiErrorModel.message}');

            final errorMessage = apiErrorModel.message ??
                'حدث خطأ غير معروف أثناء جلب البيانات.';

            return Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                  style: TextStyles.font16blackLightMedium
                      .copyWith(color: Colors.red),
                ),
              ),
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
