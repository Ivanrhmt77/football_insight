import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class StandingsPage extends StatelessWidget {
  const StandingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181928),
      appBar: CustomAppBar(title: "Standings"),
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
