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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  createSlideRoute(const MatchDetailPage(matchId: 101)),
                );
              },
              child: const Text("Manchester United vs Chelsea"),
            ),
            const SizedBox(height: 20), // Jarak antar tombol
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  createSlideRoute(const MatchDetailPage(matchId: 102)),
                );
              },
              child: const Text("Barcelona vs Real Madrid"),
            ),
          ],
        ),
      ),
    );
  }
}
