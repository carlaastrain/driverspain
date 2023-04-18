import 'package:flutter/material.dart';

class StatsRow extends StatelessWidget {
  final String imagen;
  final String title;
  final String subtitle;
  const StatsRow(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            height: 70,
            width: 70,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagen),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
