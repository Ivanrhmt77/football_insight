import 'package:flutter/material.dart';
import '../data/match_dummy_data.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: matchList.length,
          itemBuilder: (context, index) {
            final match = matchList[index];
            final matchTitle =
                "${match['home_team']['name']} vs ${match['away_team']['name']}";
            final matchId = match['match_id'];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    createSlideRoute(MatchDetailPage(matchId: matchId)),
                  );
                },
                child: Text(matchTitle),
              ),
            );
          },
        ),
      ),
    );
  }
}
