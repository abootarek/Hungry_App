import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/featuers/home/logic/cubit/home_cubit.dart';
import 'package:hungry/featuers/home/logic/cubit/home_state.dart';
import 'package:hungry/featuers/home/ui/widgets/grid_view_custom.dart';
import 'package:skeletonizer/skeletonizer.dart';

class GridViewCategoryCustom extends StatelessWidget {
  const GridViewCategoryCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is HomeStateLoading ||
          current is HomeStateSuccess ||
          current is HomeStateFailure,
      builder: (context, state) {
        return state.maybeWhen(
          homeStateLoading: () {
            return Skeletonizer(
              enabled: true,
              child: CustomGridView(homeDataList: []),
            );
          },
          // homeStateLoading: () => Center(
          //     // add CircularProgressIndicator here
          //     child: SpinKitFadingCircle(
          //   color: ColorsApp.darkGreen,
          //   size: 50.0,
          // )),
          homeStateSuccess: (homeResponse) {
            final homeDataList = homeResponse.data ?? [];
            return CustomGridView(homeDataList: homeDataList);
          },
          homeStateFailure: (apiErrorModel) =>
              Center(child: Text(apiErrorModel.message)),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
