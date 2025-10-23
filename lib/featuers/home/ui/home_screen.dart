import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/widgets/show_generic_search_dailog.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';
import 'package:hungry/featuers/home/logic/cubit/home_cubit.dart';
import 'package:hungry/featuers/home/ui/widgets/boc_builder_grid_category.dart';
import 'package:hungry/featuers/home/ui/widgets/item_grid_view_category.dart';
import 'package:hungry/featuers/home/ui/widgets/search_text_form_field.dart';
import 'package:hungry/featuers/home/ui/widgets/titel_and_name_iamge.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  Future<void> _onRefresh(BuildContext context) async {
    context.read<HomeCubit>().getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidPullToRefresh(
        onRefresh: () async {
          await _onRefresh(context);
        },
        color: ColorsApp.darkGreen,
        backgroundColor: ColorsApp.wihteColor,
        height: 160,
        animSpeedFactor: 2,
        showChildOpacityTransition: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAndNameAndImage(),
                verticalSpace(17),
                // SearchTextFormField(),
                SearchAndFilter(
                  onSearchTap: () {
                    final homeCubit = context.read<HomeCubit>();

                    final List<HomeData> allProductsList =
                        homeCubit.state.maybeWhen(
                      homeStateSuccess: (homeResponse) =>
                          homeResponse.data ?? <HomeData>[],
                      orElse: () => <HomeData>[],
                    );

                    showGenericSearchDialog<HomeData>(
                      context: context,
                      items: allProductsList,
                      searchFields: [
                        (product) => product.name ?? '',
                      ],
                      itemBuilder: (context, product) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.w,
                            right: 10.w,
                            top: 10.h,
                            bottom: 10.h,
                          ),
                          child: ItemGridViewCategory(homeData: product),
                        );
                      },
                    );
                  },
                ),
                verticalSpace(32),
                // Category Grid View
                const SizedBox(
                  height: 450,
                  child: GridViewCategoryCustom(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
