import 'package:driver_spain_app/widgets/settings_widget.dart';
import 'package:driver_spain_app/widgets/settings_widget_with_icon.dart';
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
          const Gap(100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Title2Widget(title: 'Premium'),
              RowSettingsWidget(
                radius: 'top',
                leftText: 'DGT Premium',
                rightText: 'Hazte con ello',
              ),
              Gap(1),
              RowSettingsWidget(
                radius: '',
                leftText: 'Ya sos cliente Premium?',
                rightText: 'Entra',
              ),
              Gap(1),
              RowSettingsWidget(
                radius: 'bottom',
                leftText: 'Resetea los resultados',
                rightText: 'Reset',
              ),
            ],
          ),
          const Gap(40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Title2Widget(title: 'Disfrutando DriverSpain?'),
              RowSettingsWidgetWithIcon(
                radius: 'top',
                leftText: 'Comparte',
                icon: Icons.ios_share_outlined,
              ),
              Gap(1),
              RowSettingsWidgetWithIcon(
                radius: '',
                leftText: 'Escribi una reseña',
                icon: Icons.star_border_outlined,
              ),
              Gap(1),
              RowSettingsWidgetWithIcon(
                radius: 'bottom',
                leftText: 'Reporta un problema',
                icon: Icons.report_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
