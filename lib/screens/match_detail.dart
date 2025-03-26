import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class MatchDetailPage extends StatelessWidget {
  const MatchDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Ini adalah halaman Detail Pertandingan!',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
