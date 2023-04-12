import 'package:driver_spain_app/widgets/questions_image_section.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/license_service.dart';
import '../utils/app_styles.dart';

class QuestionsTestScreen extends StatefulWidget {
  const QuestionsTestScreen({super.key});

  @override
  State<QuestionsTestScreen> createState() => _QuestionsTestScreenState();
}

class _QuestionsTestScreenState extends State<QuestionsTestScreen> {
  final licenseService = GetIt.I<LicenseService>();
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return FutureBuilder(
        future: licenseService.getLicenseTest1(),
        builder: (context, snapshot) => !snapshot.hasData
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Scaffold(
                backgroundColor: Styles.bgColor,
                appBar: AppBar(
                  backgroundColor: Styles.blueMarine,
                  title: Text('${snapshot.data![0].questionsId}/100',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18)),
                ),
                body: ListView(
                  children: [
                    QuestionsImageSection(
                      imagen: snapshot.data![0].imagen,
                    )
                  ],
                ),
              ),
      );
    });
  }
}
