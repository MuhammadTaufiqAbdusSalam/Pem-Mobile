import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '/models/user_model.dart';

class AuthService {
  final String apiUrl = 'http://10.0.2.2:8000/api';
  final storage = FlutterSecureStorage();

  Future<bool> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$apiUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      await storage.write(key: 'token', value: data['token']);
      return true;
    } else {
      return false;
    }
  }

  Future<User?> getProfile() async {
    final token = await storage.read(key: 'token');
    final response = await http.get(
      Uri.parse('$apiUrl/profile'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return User.fromJson(data['user']);
    } else {
      return null;
    }
  }

  Future<void> logout() async {
    await storage.delete(key: 'token');
  }
}
