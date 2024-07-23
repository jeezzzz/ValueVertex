import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:value_vertex/Models/home_model.dart';

class ApiService {
  static Future<Home> fetchHomeData() async {
    final response = await http.get(
        Uri.parse('https://mocki.io/v1/75793a24-4dd6-49c6-b2b4-af25938b49d0'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body)['home'];
      if (data['rooms'] is List) {
        return Home.fromJson(data);
      } else {
        throw Exception('Unexpected JSON format');
      }
    } else {
      throw Exception('Failed to load data');
    }
  }
}
