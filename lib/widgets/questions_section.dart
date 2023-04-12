import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/license_service.dart';
import '../utils/app_styles.dart';

class QuestionsSection extends StatefulWidget {
  const QuestionsSection({super.key});

  @override
  State<QuestionsSection> createState() => _QuestionsSectionState();
}

class _QuestionsSectionState extends State<QuestionsSection> {
  final licenseService = GetIt.I<LicenseService>();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: licenseService.getLicenseTest1(),
      builder: (context, snapshot) => !snapshot.hasData
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      snapshot.data![0].question,
                      style: Styles.headlineStyle3
                          .copyWith(color: Colors.grey.shade700),
                    ),
                  ),
                  RadioListTile(
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {},
                    title: Text(snapshot.data![0].options[0]["answer"],
                        style: Styles.headlineStyle4),
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: 1,
                    onChanged: (value) {},
                    title: Text(snapshot.data![0].options[1]["answer"],
                        style: Styles.headlineStyle4),
                  ),
                  RadioListTile(
                    value: 3,
                    groupValue: 1,
                    onChanged: (value) {},
                    title: Text(snapshot.data![0].options[2]["answer"],
                        style: Styles.headlineStyle4),
                  ),
                ],
              ),
            ),
    );
  }
}
