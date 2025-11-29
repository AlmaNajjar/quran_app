import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:quran_app/features/auth/presentation/widgets/build_background_circles.dart';
import 'package:quran_app/features/auth/presentation/widgets/build_login_card.dart'; // لاستخدام BackdropFilter

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BuildBackgroundCircles(),

            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(32.0),
                child: BuildLoginCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
