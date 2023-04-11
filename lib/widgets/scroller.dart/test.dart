import 'package:flutter/material.dart';

import '../../interfaces/license_test.dart';

class Test extends StatelessWidget {
  final LicenseTest licenseTest;
  const Test({super.key, required this.licenseTest});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Card(
        child: Center(
          child: Text(" ${licenseTest.question} "),
        ),
      ),
    );
  }
}
