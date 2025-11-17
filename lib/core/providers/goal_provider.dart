import 'package:flutter/foundation.dart';

class GoalProvider extends ChangeNotifier {
  int? selectedDays;

  void selectGoal(int days) {
    selectedDays = days;
    notifyListeners();
  }
}
