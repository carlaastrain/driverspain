import 'package:driver_spain_app/widgets/header_home.dart';
import 'package:driver_spain_app/widgets/header_image.dart';
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
        children: const [HeaderHome(), Gap(20), HeaderImage()],
      ),
    );
  }
}
