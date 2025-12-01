import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/goal_provider.dart';


class NextPage extends StatelessWidget {
  final Map<String, dynamic> goal;
  const NextPage({super.key, required this.goal});

  @override
  Widget build(BuildContext context) {
    final selectedDays = Provider.of<GoalProvider>(context).selectedDays;
    return Scaffold(
      body: Center(
        child: Text(
          'بدأت تحدي ${goal['days']} يومًا 🔥',
          style: GoogleFonts.tajawal(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
