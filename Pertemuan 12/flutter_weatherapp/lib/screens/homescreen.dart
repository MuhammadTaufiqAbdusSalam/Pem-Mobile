import 'package:flutter/material.dart';
import '/utils/location_helper.dart';
import '/services/weather_service.dart';
import '/widgets/weather_card.dart';
import '/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String cityName = "Loading...";
  num temperature = 0;
  num humidity = 0;
  num windSpeed = 0;
  num cloudCover = 0;
  num pressure = 0;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    _fetchWeatherByLocation();
  }

  void _fetchWeatherByLocation() async {
    final position = await getCurrentLocation();
    if (position != null) {
      final weatherData = await fetchWeatherByLocation(position);
      if (weatherData != null) {
        setState(() {
          cityName = weatherData['name'];
          temperature = weatherData['main']['temp'] - 273.15; // Kelvin to Celsius
          humidity = weatherData['main']['humidity'];
          windSpeed = weatherData['wind']['speed'];
          cloudCover = weatherData['clouds']['all'];
          pressure = weatherData['main']['pressure'];
          isLoaded = true;
        });
      }
    }
  }

  void _fetchWeatherByCity(String city) async {
    final weatherData = await fetchWeatherByCity(city);
    if (weatherData != null) {
      setState(() {
        cityName = weatherData['name'];
        temperature = weatherData['main']['temp'] - 273.15;
        humidity = weatherData['main']['humidity'];
        windSpeed = weatherData['wind']['speed'];
        cloudCover = weatherData['clouds']['all'];
        pressure = weatherData['main']['pressure'];
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFA8BFF), Color(0xff2BD2FF), Color(0xff2BFF88)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchField(onSubmitted: _fetchWeatherByCity),
            const SizedBox(height: 20),
            if (isLoaded) ...[
              WeatherCard(title: 'City', value: cityName),
              WeatherCard(title: 'Temperature', value: '${temperature.toStringAsFixed(2)} °C'),
              WeatherCard(title: 'Humidity', value: '$humidity %'),
              WeatherCard(title: 'Wind Speed', value: '$windSpeed m/s'),
              WeatherCard(title: 'Cloud Cover', value: '$cloudCover %'),
              WeatherCard(title: 'Pressure', value: '$pressure hPa'),
            ] else
              const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
