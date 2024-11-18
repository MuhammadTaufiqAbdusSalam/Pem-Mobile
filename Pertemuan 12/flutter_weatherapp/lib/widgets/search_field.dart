import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final Function(String) onSubmitted;

  const SearchField({required this.onSubmitted, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: "Enter city name",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.search),
      ),
      onSubmitted: onSubmitted,
    );
  }
}
