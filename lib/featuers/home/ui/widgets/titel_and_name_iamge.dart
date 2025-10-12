import 'package:flutter/material.dart';
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
          'Hello, Mohamed Tarek',
          style: TextStyles.font18gray,
        ),
      ],
    );
  }
}
