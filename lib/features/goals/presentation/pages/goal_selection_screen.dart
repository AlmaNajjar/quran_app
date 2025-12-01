import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/goals_grid.dart';
import 'next_page.dart';

class GoalSelectionScreen extends StatefulWidget {
  const GoalSelectionScreen({super.key});

  @override
  State<GoalSelectionScreen> createState() => _GoalSelectionScreenState();
}

class _GoalSelectionScreenState extends State<GoalSelectionScreen> {
  int? selectedGoalIndex;

  final List<Map<String, dynamic>> goals = [
    {'days': 15, 'stepsOfLight': 40},
    {'days': 20, 'stepsOfLight': 60},
    {'days': 30, 'stepsOfLight': 80},
    {'days': 40, 'stepsOfLight': 100},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Text(
                'اختر هدفك وابدأ',
                style: GoogleFonts.tajawal(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1C1C1C),
                ),
              ),
              const SizedBox(height: 90),
              Expanded(
                child: GoalsGrid(
                  goals: goals,
                  selectedIndex: selectedGoalIndex,
                  onSelect: (index) {
                    setState(() => selectedGoalIndex = index);
                  },
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedGoalIndex != null
                      ? const Color(0xFFFFD166)
                      : Colors.grey[400],
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: selectedGoalIndex != null
                    ? () {
                  final goal = goals[selectedGoalIndex!];
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NextPage(goal: goal),
                    ),
                  );
                }
                    : null,
                child: Text(
                  ' ابدأ رحلتك مع وردك اليومي',
                  style: GoogleFonts.tajawal(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
