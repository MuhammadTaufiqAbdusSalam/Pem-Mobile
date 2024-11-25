import 'package:flutter/material.dart';
import '/models/user_model.dart';
import '/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  User? _user;

  User? get user => _user;

  Future<bool> login(String email, String password) async {
    bool success = await _authService.login(email, password);
    if (success) {
      _user = await _authService.getProfile();
      notifyListeners();
    }
    return success;
  }

  Future<void> logout() async {
    await _authService.logout();
    _user = null;
    notifyListeners();
  }

  Future<void> loadUser() async {
    _user = await _authService.getProfile();
    notifyListeners();
  }
}
