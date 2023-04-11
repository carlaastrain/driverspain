import 'package:driver_spain_app/widgets/header_home.dart';
import 'package:driver_spain_app/widgets/header_image.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

import '../services/license_service.dart';
import '../utils/app_styles.dart';
import '../widgets/scroller.dart/scroller_easy_tests.dart';
import '../widgets/scroller.dart/scroller_hard_tests.dart';
import '../widgets/scroller.dart/scroller_popular_tests.dart';

class MyHomeScreen extends StatelessWidget {
  final licenseService = GetIt.I<LicenseService>();

  MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          const HeaderHome(),
          const Gap(20),
          const HeaderImage(),
          const Gap(20),
          ScrollerEasyTests(),
          ScrollerHardTests(),
          ScrollerPopularTests(),
        ],
      ),
    );
  }
}
