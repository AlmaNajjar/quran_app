import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  const InputField({
    super.key,
    required this.icon,
    required this.hintText,
    this.isPassword = false,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: screenWidth * 0.85,
        decoration: BoxDecoration(
          color: const Color(0xffFFF5F5),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextFormField(
          keyboardType:
              hintText.toLowerCase().contains('email')
                  ? TextInputType.emailAddress
                  : TextInputType.text,
          onChanged: onChanged,
          validator: validator,
          obscureText: isPassword,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.black, fontSize: 14),
            prefixIcon: Icon(icon, color: Colors.black),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 10.0,
            ),
          ),
        ),
      ),
    );
  }
}
