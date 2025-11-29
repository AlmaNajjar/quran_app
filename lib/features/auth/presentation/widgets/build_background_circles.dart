import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:quran_app/features/auth/presentation/widgets/build_circle.dart'; // لاستخدام

class BuildBackgroundCircles extends StatelessWidget {
  BuildBackgroundCircles({super.key});
  Color darkGreen = Color.fromARGB(255, 12, 119, 73); // أزرق داكن/نيلي
  Color lightAccent = Color.fromARGB(255, 210, 232, 66); // سماوي فاتح

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // تدرج لوني للخلفية بدلاً من لون ثابت
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 12, 119, 73),
            Color.fromARGB(255, 12, 119, 73),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          // دائرة كبيرة في أعلى اليسار
          Positioned(
            top: -40,
            right: -120,
            child: BuildCircle(
              size: 400,
              color: lightAccent.withOpacity(0.1),
              colorBorder: lightAccent,
            ),
          ),
          // دائرة متوسطة في أسفل اليمين
          Positioned(
            bottom: -40,
            right: -120,
            child: BuildCircle(
              size: 400,
              color: Colors.orange.shade400,
              colorBorder: Colors.orange.shade400,
            ),
          ),
          // دائرة صغيرة في المنتصف
          Positioned(
            top: 150,
            left: -150,
            child: BuildCircle(
              size: 400,
              color: Colors.white,
              colorBorder: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
