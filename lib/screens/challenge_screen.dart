import 'package:driver_spain_app/widgets/subtitle_widget.dart';
import 'package:driver_spain_app/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/image_section.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              children: [
                const ImageSection(
                  imagen: 'testIdGroup7.jpeg',
                ),
                const TitleWidget(title: 'Desafíos'),
                const SubtitleWidget(
                  subtitle:
                      'Aqui encontraras las preguntas que has respondido de manera incorrecta, para que puedas repasarlas y mejorar tu rendimiento.',
                ),
                const Gap(20),
                Icon(
                  Icons.library_books,
                  size: 95,
                  color: Styles.primaryColor,
                ),
                const Gap(30),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(25),
                  child: Text(
                    'Sin desafíos pendientes',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.redAccent[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Styles.primaryColor,
                  ),
                ),
                child: const Text(
                  'Comienza',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
