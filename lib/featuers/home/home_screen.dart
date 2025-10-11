import 'package:flutter/material.dart';
import 'package:hungry/core/helper/six_box.dart';
import 'package:hungry/core/theming/styles_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
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
            verticalSpace(5),
            Text(
              'Hello, Mohamed Tarek',
              style: TextStyles.font18gray,
            ),
          ],
        ),
      ),
    );
  }
}
