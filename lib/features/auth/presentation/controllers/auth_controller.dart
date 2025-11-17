import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/core/services/shared_prefs_service.dart';
import './../../data/datasources/auth_local_datasource.dart';

final authRepositoryProvider = Provider<AuthLocalDataSource>((ref) {
  return AuthLocalDataSource(SharedPrefsService());
});

final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  final repo = ref.read(authRepositoryProvider);
  return AuthController(repo);
});

class AuthController extends StateNotifier<bool> {
  final AuthLocalDataSource repo;

  AuthController(this.repo) : super(false) {
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    state = await repo.isLoggedIn();
  }

  Future<void> login() async {
    await repo.login();
    state = true;
  }

  Future<void> logout() async {
    await repo.logout();
    state = false;
  }
}
