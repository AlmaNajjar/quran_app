import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:quran_app/features/auth/presentation/widgets/build_input_field.dart';
import 'package:quran_app/features/auth/presentation/widgets/custom_eleveted_button.dart';

class BuildLoginCard extends StatelessWidget {
  BuildLoginCard({super.key});
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
                'تسجيل دخول',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

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
              CustomElevetedButton(),

              // زر تسجيل الدخول
              const SizedBox(height: 20),

              // نسيت كلمة المرور
              TextButton(
                onPressed: () {
                  // TODO: إضافة منطق نسيت كلمة المرور
                },
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyle(color: Colors.amber.shade700),
                ),
              ),

              // الانتقال للتسجيل
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'لا تملك حساباً؟',
                    style: TextStyle(color: Color.fromARGB(213, 255, 255, 255)),
                    textDirection: TextDirection.rtl,
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: الانتقال لصفحة التسجيل
                    },
                    child: const Text(
                      'سجّل الآن',
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
