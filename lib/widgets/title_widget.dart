import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
