import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../auth/presentation/controllers/auth_controller.dart';
import '/app_routes.dart';

final splashControllerProvider =
    Provider<SplashController>((ref) {
  return SplashController(ref);
});

class SplashController {
  final Ref ref;

  SplashController(this.ref);

  Future<void> start(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    final loggedIn = ref.read(authControllerProvider);

    if (loggedIn) {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    } else {
      Navigator.pushReplacementNamed(context, AppRoutes.login);
    }
  }
}
