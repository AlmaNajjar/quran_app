import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/goal_provider.dart';


class GoalsGrid extends StatelessWidget {
  final List<Map<String, dynamic>> goals;
  final int? selectedIndex;
  final Function(int) onSelect;

  const GoalsGrid({
    super.key,
    required this.goals,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: goals.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.95,
      ),
      itemBuilder: (context, index) {
        final goal = goals[index];
        final isSelected = selectedIndex == index;

        return GestureDetector(
          onTap: () {
            onSelect(index);
            Provider.of<GoalProvider>(context, listen: false)
                .selectGoal(goal['days']);},
            child:
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: isSelected
                      ? [const Color(0xFFFFD166), const Color(0xFFFFA500)]
                      : [const Color(0xFFFFF4D9), const Color(0xFFFFEAB5)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  if (isSelected)
                    BoxShadow(
                      color: Colors.amber.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                ],
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFFFFC766)
                      : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${goal['days']} يوم',
                    style: GoogleFonts.tajawal(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF3A3A3A),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${goal['stepsOfLight']} خطوة نور',
                    style: GoogleFonts.tajawal(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF5A3E1B),
                    ),
                  ),
                ],
              ),
            ),

        );
      },
    );
  }
}
