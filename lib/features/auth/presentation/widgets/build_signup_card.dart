import 'package:flutter/material.dart';
import 'package:quran_app/features/auth/presentation/pages/login_page.dart';
import 'package:quran_app/features/auth/presentation/pages/signup_page.dart';
import 'dart:ui';

import 'package:quran_app/features/auth/presentation/widgets/build_input_field.dart';
import 'package:quran_app/features/auth/presentation/widgets/custom_eleveted_button.dart';

class BuildSignupCard extends StatelessWidget {
  BuildSignupCard({super.key});
  Color accentColor = Color(0xFFFFCC80); // ذهبي هادئ

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        // تأثير التضبيب (الضباب)
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          padding: const EdgeInsets.all(24.0),
          // الشفافية: يمكنك تعديل قيمة opacity (0.3 هنا)
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withOpacity(0.4)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // الشعار والعنوان
              const Text(
                'انشاء حساب',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              BuildInputField(
                hintText: 'الاسم',
                icon: Icons.person_2_outlined,
                iconColor: Colors.amber.shade700,
              ),
              const SizedBox(height: 16),
              // حقل البريد الإلكتروني
              BuildInputField(
                hintText: 'البريدالالكتروني',
                icon: Icons.email_outlined,
                iconColor: Colors.amber.shade700,
              ),
              const SizedBox(height: 16),

              // حقل كلمة المرور
              BuildInputField(
                hintText: 'كلمة السر',
                icon: Icons.lock_outline,
                isPassword: true,
                iconColor: Colors.amber.shade700,
              ),
              const SizedBox(height: 24),
              CustomElevetedButton(text: 'انشاء حساب'),

              // زر تسجيل الدخول
              const SizedBox(height: 20),

              // نسيت كلمة المرور

              // الانتقال للتسجيل
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'أمتلك حساب',
                    style: TextStyle(color: Color.fromARGB(213, 255, 255, 255)),
                    textDirection: TextDirection.rtl,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: const Text(
                      'سجّل دخول',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
