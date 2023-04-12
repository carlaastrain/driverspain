import 'package:flutter/material.dart';

class QuestionsImageSection extends StatelessWidget {
  final String imagen;
  const QuestionsImageSection({super.key, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/$imagen"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
