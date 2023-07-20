import 'package:http/http.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/helpers.dart';

class OrderService {
  Future<bool> validate() async {
    final email = await persistenceService.getString('email');
    if (email == null) return false;

    final response = await post(
      Uri.parse('$baseUrl/api/starter-kit/validate-order?email=$email'),
    );
    if (response.statusCode != 200) throw 'Error: No access to product';

    return true;
  }
}
