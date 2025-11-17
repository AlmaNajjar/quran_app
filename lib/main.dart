import 'package:flutter/material.dart';
import 'package:quran_app/features/splash/presentation/pages/splash_page.dart';
import 'package:quran_app/features/splash/presentation/pages/splash_page.dart'; // ← ضيفي هذا لأنو ملف السبلاتش موجود عندك

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rahma App',
      theme: ThemeData(useMaterial3: true),
      home: const SplashView(),
    );
  }
}
