import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: GoogleFonts.tajawal().fontFamily,
      scaffoldBackgroundColor: const Color(0xFFFDF6E3),
      colorScheme: const ColorScheme.light(
        primary: Color(0xFFFFD166),
        secondary: Color(0xFFFFD166),
      ),
      textTheme: GoogleFonts.tajawalTextTheme(),
      useMaterial3: true,
    );
  }
}
