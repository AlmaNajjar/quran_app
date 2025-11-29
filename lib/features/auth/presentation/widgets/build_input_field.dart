import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class BuildInputField extends StatelessWidget {
  BuildInputField({
    super.key,
    required this.hintText,
    required this.icon,
    this.iconColor = const Color(0xffffffff),
    this.isPassword = false,
  });
  final String hintText;
  final IconData icon;
  final Color iconColor;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
          0.40,
        ), // خلفية الحقل داخل البطاقة الشفافة
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.7)),
      ),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: Colors.white),
        textAlign: TextAlign.right, // لمحاذاة النص لليمين (اللغة العربية)
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          prefixIcon: Icon(icon, color: iconColor), // الأيقونة على اليسار
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          border: InputBorder.none,

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.white),
          ), // إزالة حدود TextField الداخلية
        ),
      ),
    );
  }
}
