import 'package:driver_spain_app/interfaces/ids_tests.dart';
import 'package:driver_spain_app/screens/questions_test_screen.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  final LicenseIds licenseTestIdGroup;
  const Test({super.key, required this.licenseTestIdGroup});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const QuestionsTestScreen()),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(licenseTestIdGroup.imagen),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Text(
                  "Preguntas ",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 14),
                child: Text(
                  licenseTestIdGroup.quantityQuestions,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
