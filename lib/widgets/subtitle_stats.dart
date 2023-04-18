import 'package:flutter/material.dart';

class SubtitleStats extends StatelessWidget {
  const SubtitleStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: const Text(
        'Completa cada uno de los siguientes elementos:',
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
