import 'package:flutter/material.dart';
import 'package:hungry/core/cache/constans_cached.dart';
import 'package:hungry/core/cache/sherd_prefrance.dart';
import 'package:hungry/core/theming/styles_app.dart';

class TitleAndNameAndImage extends StatelessWidget {
  const TitleAndNameAndImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Hungry?',
              style: TextStyles.font60darkGreen,
            ),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'assets/images/profile.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.error,
                    color: Colors.red,
                  );
                },
              ),
            ),
          ],
        ),
        Text(
          '${SharedPrefHelper.getData(key: SharedPrefKeys.name)}',
          style: TextStyles.font18gray,
        ),
      ],
    );
  }
}
