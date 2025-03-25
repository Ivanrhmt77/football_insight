import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181928),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFF222232),
      ),
      body: const Center(
        child: Text(
          'Ini adalah halaman Home!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
