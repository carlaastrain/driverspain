import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/license_service.dart';
import '../utils/app_styles.dart';

class QuestionsSection extends StatefulWidget {
  const QuestionsSection({Key? key}) : super(key: key);

  @override
  State<QuestionsSection> createState() => _QuestionsSectionState();
}

class _QuestionsSectionState extends State<QuestionsSection> {
  final LicenseService licenseService = GetIt.instance<LicenseService>();
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: licenseService.getLicenseTest1(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final question = snapshot.data?[0].question ?? '';
        final options = snapshot.data?[0].options ?? [];
        return Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(10),
                child: Text(
                  question,
                  style: Styles.headlineStyle3.copyWith(
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              for (var i = 0; i < options.length; i++)
                RadioListTile<int>(
                  value: i + 1,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value ?? 0;
                    });
                  },
                  title: Text(
                    options[i]['answer'] ?? '',
                    style: Styles.headlineStyle4,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
