import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  final String subtitle;
  const SubtitleWidget({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
