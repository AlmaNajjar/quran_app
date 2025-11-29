import 'package:flutter/material.dart';

class CustomElevetedButton extends StatelessWidget {
  const CustomElevetedButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: () {
        // TODO: إضافة منطق تسجيل الدخول هنا
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber.shade700,
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Text(
        ' تسجيل دخول',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black45, // نفس لون الخلفية الداكن
        ),
      ),
    );
  }
}
