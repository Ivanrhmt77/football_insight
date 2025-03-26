import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class PlayerStatisticsPage extends StatelessWidget {
  const PlayerStatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181928),
      appBar: CustomAppBar(title: "Player Statistics"),
      body: const Center(
        child: Text(
          'Ini adalah halaman PlayerStatistics!',
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
