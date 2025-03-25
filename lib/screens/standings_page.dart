import 'package:flutter/material.dart';

class StandingsPage extends StatelessWidget {
  final String title;

  const StandingsPage({super.key, required this.title});

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
          'Ini adalah halaman Standings!',
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
