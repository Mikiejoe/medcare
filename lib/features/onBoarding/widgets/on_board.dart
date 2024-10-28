import 'package:flutter/material.dart';

class OnBoard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  const OnBoard({super.key, required this.icon, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white,size: 150,),
        Text(
          title,
          textAlign: TextAlign.center,
          style:const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white30
            ),
          ),
        )
      ],
    );
  }
}
