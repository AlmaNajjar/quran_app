import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static const String keyIsLoggedIn = "is_logged_in";

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyIsLoggedIn) ?? false;
  }

  Future<void> setLoggedIn(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(keyIsLoggedIn, value);
  }
}
