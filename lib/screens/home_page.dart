import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../utils/route_animations.dart';
import 'match_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181928),
      appBar: CustomAppBar(title: "Football Insight"),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, createSlideRoute(const MatchDetailPage()));
          },
          child: const Text("Lihat Detail Pertandingan"),
        ),
      ),
    );
  }
}
