import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../data/match_dummy_data.dart'; // Import data dummy

class MatchDetailPage extends StatelessWidget {
  final int matchId; // Tambahkan parameter matchId

  const MatchDetailPage({super.key, required this.matchId});

  @override
  Widget build(BuildContext context) {
    // Cari pertandingan yang sesuai dengan matchId
    final matchData = matchList.firstWhere(
      (match) => match['match_id'] == matchId,
      orElse: () => {},
    );

    // Jika data tidak ditemukan
    if (matchData.isEmpty) {
      return Scaffold(
        backgroundColor: const Color(0xFF181928),
        appBar: CustomAppBar(
          title: "Detail Pertandingan",
          leftIcon: Icons.arrow_back,
          onLeftIconPressed: () {
            Navigator.pop(context);
          },
        ),
        body: const Center(
          child: Text(
            "Pertandingan tidak ditemukan",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFF181928),
      appBar: CustomAppBar(
        title: "Detail Pertandingan",
        leftIcon: Icons.arrow_back,
        onLeftIconPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Liga dan Musim
            Text(
              "${matchData['league']} - ${matchData['season']}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            // Stadion dan Tanggal
            Text(
              "${matchData['stadium']} - ${matchData['date']} - ${matchData['time']}",
              style: const TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 20),
            // Skor Pertandingan
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTeamColumn(matchData['home_team']),
                const SizedBox(width: 20),
                Text(
                  "${matchData['home_team']['score']} - ${matchData['away_team']['score']}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 20),
                _buildTeamColumn(matchData['away_team']),
              ],
            ),
            const SizedBox(height: 20),
            // Daftar Kejadian Pertandingan
            Expanded(
              child: ListView.builder(
                itemCount: matchData['events'].length,
                itemBuilder: (context, index) {
                  var event = matchData['events'][index];
                  return ListTile(
                    leading: Icon(
                      event['type'] == 'goal'
                          ? Icons.sports_soccer
                          : Icons.warning,
                      color: Colors.white,
                    ),
                    title: Text(
                      "${event['minute']}' - ${event['player']}",
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      event['team'],
                      style: const TextStyle(color: Colors.white70),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamColumn(Map<String, dynamic> team) {
    return Column(
      children: [
        Image.network(team['logo'], width: 50, height: 50),
        const SizedBox(height: 5),
        Text(
          team['name'],
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
