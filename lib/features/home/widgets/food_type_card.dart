import 'package:flutter/material.dart';

class FoodTypeCard extends StatelessWidget {
  final String foodName;
  final Color color;
  const FoodTypeCard({super.key, required this.foodName, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          margin: const EdgeInsets.only(left: 16),
          width: 80,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16)),
        ),
        Text(
          foodName,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
