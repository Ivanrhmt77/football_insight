import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181928),
      appBar: CustomAppBar(title: "Profile"),
      body: const Center(
        child: Text(
          'Ini adalah halaman Profile!',
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
