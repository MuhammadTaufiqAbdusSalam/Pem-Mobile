import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String title;
  final String value;

  const WeatherCard({required this.title, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
