import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/rahma_animation.dart';
import '../controllers/splash_controller.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
 @override
void initState() {
  super.initState();
  Future.microtask(() {
    ref.read(splashControllerProvider).start(context);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 12, 119, 73),
              Color.fromARGB(255, 35, 170, 96),
              Color.fromARGB(255, 78, 193, 103),
              Color.fromARGB(255, 215, 204, 117),
            ],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: const Center(child: RahmaAnimatedText()),
      ),
    );
  }
}
