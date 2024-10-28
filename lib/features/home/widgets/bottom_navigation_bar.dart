import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 60,
      width: double.infinity,
      child: const Center(
        child: Text("Bottom Navigation Bar"),
      ),

    );
  }
}