import 'dart:convert';
import 'package:flutter_lab1/varibles.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<String> login(String username, String password) async {
    final Response = await http.post(Uri.parse("$apiURL/api/auth/login"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"user_name": username, "password": password}));
    print(Response.statusCode);

    if (Response.statusCode == 200) {
      final getrow = await jsonDecode(Response.body);
      return getrow['role'];
    } else {
      throw Exception(Response.statusCode);
    }
  }
  
  Future<void> register(
    String username,
    String password,
    String role,
    String name,
  ) async {
    final Response = await http.post(Uri.parse("$apiURL/api/auth/register"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "user_name": username,
          "password": password,
          "role": role,
          "name": name
        }));
    print(Response.statusCode);
  }
}
