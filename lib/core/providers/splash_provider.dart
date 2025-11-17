import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final splashProvider = StateNotifierProvider<SplashNotifier, bool>((ref) {
  return SplashNotifier();
});

class SplashNotifier extends StateNotifier<bool> {
  SplashNotifier() : super(false);

  Future<void> startSplash(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3)); // مدة الظهور
    state = true;

    // بعدها انتقلي مثلاً إلى صفحة البداية
    Navigator.pushReplacementNamed(context, '/home');
  }
}
