import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'dart:convert';
import '/utils/constants.dart';

Future<Map<String, dynamic>?> fetchWeatherByLocation(Position position) async {
  final url = Uri.parse(
      '${domain}lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return json.decode(response.body);
  }
  return null;
}

Future<Map<String, dynamic>?> fetchWeatherByCity(String cityName) async {
  final url = Uri.parse('${domain}q=$cityName&appid=$apiKey');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return json.decode(response.body);
  }
  return null;
}
