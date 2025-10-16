import 'package:flutter/material.dart';
import 'package:hungry/core/helper/extensions.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/routing/routing.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/core/theming/styles_app.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';

class ItemGridViewCategory extends StatelessWidget {
  final HomeData homeData;

  const ItemGridViewCategory({
    super.key,
    required this.homeData,
  });

  @override  
  Widget build(BuildContext context) {
    return Hero(
      tag: homeData.id ?? '',
      child: GestureDetector(
        onTap: () {
          context.pushNamed(
            Routes.productDetailsScreen,
            arguments: homeData,
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: ColorsApp.wihteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF000000).withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 17,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      homeData.image ?? '',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(
                          Icons.broken_image,
                          size: 60,
                          color: Colors.red),
                    ),
                  ),
                ),
                verticalSpace(8),
                Text(
                  homeData.name ?? '',
                  style: TextStyles.font16blackLightMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  homeData.price != null ? '${homeData.price} EGP' : '',
                  style: TextStyles.font18gray,
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const SizedBox(width: 5),
                    Text(
                      homeData.rating ?? '0.0',
                      style: TextStyles.font16blackLightMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
