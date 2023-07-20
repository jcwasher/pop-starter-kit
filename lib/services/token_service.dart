import 'dart:convert';

import 'package:http/http.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/helpers.dart';

class TokenService {
  Future<bool> fetch({
    required String username,
    required String password,
  }) async {
    final response = await post(
      Uri.parse('$baseUrl/wp-json/jwt-auth/v1/token'),
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
      headers: {'Content-Type': 'application/json'},
    );
    final data = jsonDecode(response.body);

    if (response.statusCode != 200) throw data['message'];

    await persistenceService.setString('email', username);
    await persistenceService.setString('authToken', data['token']);
    return true;
  }

  Future<bool> validate() async {
    final token = await persistenceService.getString('authToken');
    if (token == null) return false;

    final response = await post(
      Uri.parse('$baseUrl/wp-json/jwt-auth/v1/token/validate'),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode != 200) throw 'Error: Token is invalid';

    return true;
  }

  Future<void> refresh() async {
    final token = await persistenceService.getString('authToken');
    if (token == null) return null;

    final response = await post(
      Uri.parse('$baseUrl/wp-json/jwt-auth/v1/token/refresh'),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode != 200) throw 'Error: Failed to refresh token';

    final data = jsonDecode(response.body);
    await persistenceService.setString('authToken', data['token']);
  }
}
