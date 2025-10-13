import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hungry/core/networking/api_errer_medol.dart';
import 'package:hungry/core/theming/colors_app.dart';
import 'package:lottie/lottie.dart';

void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
  log("apiErrorModel.errors.toString(): ${apiErrorModel.message}");
  showDialog(
    context: context,
    barrierDismissible: false, // Prevent dismissing by tapping outside
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth:
              MediaQuery.of(context).size.width * 0.85, // Responsive width
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Optimized Lottie widget
              _buildOptimizedLottieAnimation(),
              const SizedBox(height: 16),
              // Text(
              //   apiErrorModel.message.toString(),
              //   style: TextStyle(
              //     fontSize: 18,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.red[700],
              //   ),
              // ),
              const SizedBox(height: 8),
              Text(
                'There is an error, usually in the email or password.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19, color: Colors.red),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsApp.darkGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// error lottie animation widget
Widget _buildOptimizedLottieAnimation() {
  return Lottie.asset(
    'assets/lottile/error.json',
    width: 150,
  );
}
