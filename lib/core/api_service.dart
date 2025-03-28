import 'package:http/http.dart' as http;
import '../models/rocket.dart';
import 'constants.dart';

class ApiService {
  Future<List<Rocket>> fetchRockets() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      return rocketFromJson(response.body);
    } else {
      throw Exception('Failed to load rockets');
    }
  }
}
