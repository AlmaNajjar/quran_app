import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final splashControllerProvider = StateNotifierProvider<SplashController, bool>((
  ref,
) {
  return SplashController();
});

class SplashController extends StateNotifier<bool> {
  SplashController() : super(false);

  Future<void> start(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, "/home");
  }
}
