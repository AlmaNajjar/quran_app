import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_routes.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rahma App',
      theme: ThemeData(useMaterial3: true),
      onGenerateRoute: AppRoutes.onGenerate,
      initialRoute: AppRoutes.splash,
    );
  }
}
