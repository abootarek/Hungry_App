import 'package:flutter/material.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';

class GridViewCategoryCustom extends StatelessWidget {
  const GridViewCategoryCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 0.8,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Expanded(
          child: Container(
            height: 450,
            decoration: BoxDecoration(
              color: ColorsApp.wihteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 17,
                  offset: Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              children: [
                Image.asset('assets/images/image 5.png'),
                Text(
                  'Cheeseburger',
                  style: TextStyles.font16blackLightMedium,
                ),
                Text(
                  'Wendy\'s Burger',
                  style: TextStyles.font16blackLightMedium,
                ),
                Row(children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    '4.5',
                    style: TextStyles.font16blackLightMedium,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorsApp.darkGreen,
                  ),
                ])
              ],
            ),
          ),
        );
      },
    );
  }
}
