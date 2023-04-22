import 'package:driver_spain_app/widgets/settings_widget.dart';
import 'package:driver_spain_app/widgets/subtitle_widget.dart';
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
        children: const [
          ImageSection(
            imagen: 'testIdGroup4.avif',
          ),
          TitleWidget(title: 'Settings'),
          Gap(20),
          Title2Widget(title: 'Premium'),
          RowSettingsWidget(
            radiusBoolean: true,
          ),
          RowSettingsWidget(radiusBoolean: false),
          Gap(20),
          Title2Widget(title: 'Disfrutando DriverSpain?')
        ],
      ),
    );
  }
}
