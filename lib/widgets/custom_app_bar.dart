import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final VoidCallback? onLeftIconPressed;
  final VoidCallback? onRightIconPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.leftIcon,
    this.rightIcon,
    this.onLeftIconPressed,
    this.onRightIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      color: const Color(0xFF181928),
      child: Row(
        children: [
          // Tombol kiri (jika ada)
          if (leftIcon != null)
            IconButton(
              icon: Icon(leftIcon, color: Colors.white),
              onPressed: onLeftIconPressed,
              padding: const EdgeInsets.all(16),
              iconSize: 28,
            )
          else
            const SizedBox(width: 60), // Placeholder agar title tetap di tengah
          // Title di tengah
          Expanded(
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Tombol kanan (jika ada)
          if (rightIcon != null)
            IconButton(
              icon: Icon(rightIcon, color: Colors.white),
              onPressed: onRightIconPressed,
              padding: const EdgeInsets.all(16),
              iconSize: 28,
            )
          else
            const SizedBox(width: 60), // Placeholder agar title tetap di tengah
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
