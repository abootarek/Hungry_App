import 'package:flutter/material.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:hungry/featuers/home/data/model/home_response.dart';

class ItemContainerDetails extends StatelessWidget {
  const ItemContainerDetails({
    super.key,
    required this.homeData,
  });

  final HomeData? homeData;

  @override
  Widget build(BuildContext context) {
    return Hero(
      transitionOnUserGestures: true,
      tag: homeData?.id ?? '',
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorsApp.darkGreen,
              ColorsApp.wihteColor,
            ],
          ),
          border: Border.all(color: ColorsApp.grayLight),
          borderRadius: BorderRadius.circular(15),
          color: ColorsApp.wihteColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Image.network(homeData?.image ?? 'not found',
            width: double.infinity, alignment: Alignment.center,
            errorBuilder: (context, error, stackTrace) {
          return const Icon(
            Icons.error,
            color: Colors.red,
          );
        }),
      ),
    );
  }
}
