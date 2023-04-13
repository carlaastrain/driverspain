import 'package:driver_spain_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/license_service.dart';

class ExplanationAnswer extends StatelessWidget {
  final LicenseService _licenseService = GetIt.instance<LicenseService>();
  final bool showExplanation;

  ExplanationAnswer({Key? key, required this.showExplanation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _licenseService.getLicenseTest1(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (showExplanation) {
          return Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              snapshot.data![0].description,
              style: Styles.headlineStyle4.copyWith(fontSize: 15),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
