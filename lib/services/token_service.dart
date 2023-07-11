import 'dart:convert';

import 'package:http/http.dart';
import 'package:pop_starter_kit/dependencies.dart';

class TokenService {
  Future<bool> fetch({
    required String username,
    required String password,
  }) async {
    final response = await post(
      Uri.parse('https://www.pawsofprey.com/wp-json/jwt-auth/v1/token'),
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
      headers: {'Content-Type': 'application/json'},
    );
    final data = jsonDecode(response.body);

    if (response.statusCode != 200) throw data['message'];

    await persistenceService.setString('authToken', data['token']);
    return true;
  }

  Future<bool> validate() async {
    final token = await persistenceService.getString('authToken');
    if (token == null) return false;

    final response = await post(
      Uri.parse(
        'https://www.pawsofprey.com/wp-json/jwt-auth/v1/token/validate',
      ),
      headers: {'Authorization': 'Bearer $token'},
    );

    return response.statusCode == 200;
  }

  Future<void> remove() async {
    await persistenceService.remove('authToken');
  }
}
