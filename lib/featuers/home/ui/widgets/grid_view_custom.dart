import 'package:flutter/material.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';
import 'package:hungry/featuers/home/ui/widgets/item_grid_view_category.dart';

class CustomGridView extends StatelessWidget {
  final List<HomeData> homeDataList;

  const CustomGridView({
    super.key,
    required this.homeDataList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 0.8,
      ),
      itemCount: homeDataList.length,
      itemBuilder: (context, index) {
        return ItemGridViewCategory(homeData: homeDataList[index]);
      },
    );
  }
}
