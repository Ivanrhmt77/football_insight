import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double appBarHeight = 100; // 56 (default) + 22 (margin)

    return Scaffold(
      backgroundColor: const Color(0xFF181928),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight + statusBarHeight),
        child: Container(
          padding: EdgeInsets.only(top: statusBarHeight),
          color: const Color(0xFF181928),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
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
