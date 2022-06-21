import 'dart:convert';
import 'package:http/http.dart' as http;
import 'toxicite.dart';

class ToxiciteApi {
  static Map<String, String> get headers => {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "Authorization": "Bearer 628f8e13a91fce17010dc3a6|FCWCnUJyoXzYLAXF2ruAmFEHnWDKwSDUIR7Ve6OX",
  };
  static Future<List<Toxicite>> getAll() async {

    final url = Uri.parse('http://localhost/api/toxiciter');
    final response = await http.get(url,headers: headers);

    if (response.statusCode == 200) {
      final List toxicite = json.decode(response.body);

      return toxicite.map((json) => Toxicite.fromJson(json)).toList();
    } else {
      throw Exception();
    }
  }

}