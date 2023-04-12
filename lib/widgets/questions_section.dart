import 'package:flutter/material.dart';

class QuestionsSection extends StatefulWidget {
  const QuestionsSection({super.key});

  @override
  State<QuestionsSection> createState() => _QuestionsSectionState();
}

class _QuestionsSectionState extends State<QuestionsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          RadioListTile(
            value: 1,
            groupValue: 1,
            onChanged: (value) {},
            title: const Text('Option 1'),
          ),
          RadioListTile(
            value: 2,
            groupValue: 1,
            onChanged: (value) {},
            title: const Text('Option 2'),
          ),
          RadioListTile(
            value: 3,
            groupValue: 1,
            onChanged: (value) {},
            title: const Text('Option 3'),
          ),
        ],
      ),
    );
  }
}
