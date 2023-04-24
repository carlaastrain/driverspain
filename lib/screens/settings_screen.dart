import 'package:driver_spain_app/widgets/settings_widget.dart';
import 'package:driver_spain_app/widgets/title_2_widget.dart';
import 'package:driver_spain_app/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/image_section.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          const ImageSection(
            imagen: 'testIdGroup4.avif',
          ),
          const TitleWidget(title: 'Settings'),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Title2Widget(title: 'Premium'),
              RowSettingsWidget(
                radius: 'top',
              ),
              Gap(1),
              RowSettingsWidget(radius: ''),
              Gap(1),
              RowSettingsWidget(radius: 'bottom'),
            ],
          ),
          const Gap(40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Title2Widget(title: 'Disfrutando DriverSpain?'),
              RowSettingsWidget(
                radius: 'top',
              ),
              Gap(1),
              RowSettingsWidget(radius: ''),
              Gap(1),
              RowSettingsWidget(radius: 'bottom'),
            ],
          ),
        ],
      ),
    );
  }
}
