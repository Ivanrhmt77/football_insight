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
        backgroundColor: const Color(0xFF181928),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: const Center(
        child: Text(
          'Standings',
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
