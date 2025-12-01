import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:quran_app/features/auth/presentation/widgets/build_background_circles.dart';
import 'package:quran_app/features/auth/presentation/widgets/build_login_card.dart';
import 'package:quran_app/features/auth/presentation/widgets/build_signup_card.dart'; // لاستخدام BackdropFilter

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                child: BuildSignupCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
