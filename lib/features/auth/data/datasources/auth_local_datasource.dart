import '/../../core/services/shared_prefs_service.dart';

class AuthLocalDataSource {
  final SharedPrefsService prefs;

  AuthLocalDataSource(this.prefs);

  Future<bool> isLoggedIn() => prefs.isLoggedIn();

  Future<void> login() => prefs.setLoggedIn(true);

  Future<void> logout() => prefs.setLoggedIn(false);
}
