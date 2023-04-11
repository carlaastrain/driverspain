import 'package:driver_spain_app/widgets/header_home.dart';
import 'package:driver_spain_app/widgets/header_image.dart';
import 'package:driver_spain_app/widgets/scroller.dart/scroller_tests.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

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
          ScrollerTests(),
        ],
      ),
    );
  }
}
