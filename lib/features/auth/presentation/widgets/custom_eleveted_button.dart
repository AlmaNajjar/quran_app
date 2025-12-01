import 'package:flutter/material.dart';
import 'package:quran_app/features/goals/presentation/pages/goal_selection_screen.dart';

class CustomElevetedButton extends StatelessWidget {
  CustomElevetedButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GoalSelectionScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber.shade700,
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black45, // نفس لون الخلفية الداكن
        ),
      ),
    );
  }
}
