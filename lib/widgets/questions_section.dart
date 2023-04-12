import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

import '../services/license_service.dart';
import '../utils/app_styles.dart';
import 'custom_radio.dart';

class QuestionsSection extends StatefulWidget {
  const QuestionsSection({Key? key}) : super(key: key);

  @override
  State<QuestionsSection> createState() => _QuestionsSectionState();
}

class _QuestionsSectionState extends State<QuestionsSection> {
  final licenseService = GetIt.I<LicenseService>();
  int _selectedValue = -1;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: licenseService.getLicenseTest1(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container(
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
                const Gap(15),
                CustomRadio(
                  isSelected: _selectedValue == 1,
                  onTap: () {
                    setState(() {
                      _selectedValue = 1;
                    });
                  },
                  label: snapshot.data![0].options[0]['answer'],
                ),
                const Gap(15),
                CustomRadio(
                  isSelected: _selectedValue == 2,
                  onTap: () {
                    setState(() {
                      _selectedValue = 2;
                    });
                  },
                  label: snapshot.data![0].options[1]['answer'],
                ),
                const Gap(15),
                CustomRadio(
                  isSelected: _selectedValue == 3,
                  onTap: () {
                    setState(() {
                      _selectedValue = 3;
                    });
                  },
                  label: snapshot.data![0].options[2]['answer'],
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
