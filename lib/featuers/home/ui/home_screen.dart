import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/widgets/show_generic_search_dailog.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';
import 'package:hungry/featuers/home/logic/cubit/home_cubit.dart';
import 'package:hungry/featuers/home/ui/widgets/boc_builder_grid_category.dart';
import 'package:hungry/featuers/home/ui/widgets/item_grid_view_category.dart';
import 'package:hungry/featuers/home/ui/widgets/search_text_form_field.dart';
import 'package:hungry/featuers/home/ui/widgets/titel_and_name_iamge.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  final bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleAndNameAndImage(),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0.w,
                          vertical: 7.h,
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
    );
  }
}
