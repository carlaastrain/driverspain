import 'package:driver_spain_app/widgets/progress_bar.dart';
import 'package:driver_spain_app/widgets/stats_row.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/image_section.dart';
import '../widgets/subtitle_widget.dart';
import '../widgets/title_widget.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: const [
          ImageSection(
            imagen: 'testIdGroup1.avif',
          ),
          TitleWidget(
            title: 'Tu Progreso',
          ),
          ProgressBar(),
          Gap(10),
          SubtitleWidget(
            subtitle: 'Completa cada uno de los siguientes elementos:',
          ),
          Gap(10),
          StatsRow(
            title: 'Test fáciles',
            subtitle: '0 de 10 tests',
            imagen: 'assets/images/header_image.jpeg',
          ),
          Gap(10),
          StatsRow(
            title: 'Test dificiles',
            subtitle: '0 de 8 tests',
            imagen: 'assets/images/testIdGroup1.avif',
          ),
          Gap(10),
          StatsRow(
            title: 'Test populares',
            subtitle: '0 de 3 tests',
            imagen: 'assets/images/testIdGroup2.avif',
          ),
          Gap(10),
          StatsRow(
            title: 'Maraton test',
            subtitle: '0 de 3 tests',
            imagen: 'assets/images/testIdGroup6.jpeg',
          ),
          Gap(10),
          StatsRow(
            title: 'Simulador de examen',
            subtitle: '0 de 3 tests',
            imagen: 'assets/images/testIdGroup7.jpeg',
          ),
        ],
      ),
    );
  }
}
