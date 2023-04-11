import 'package:driver_spain_app/widgets/scroller.dart/test.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../services/license_service.dart';

class ScrollerEasyTests extends StatelessWidget {
  final licenseService = GetIt.I<LicenseService>();
  ScrollerEasyTests({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: licenseService.getTestIdsGroupsEasy(),
      builder: (context, snapshot) => !snapshot.hasData
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  for (var i = 0; i < snapshot.data!.length; i++)
                    Test(
                      licenseTestIdGroup: snapshot.data![i],
                      key: ValueKey(i),
                    ),
                ],
              ),
            ),
    );
  }
}
