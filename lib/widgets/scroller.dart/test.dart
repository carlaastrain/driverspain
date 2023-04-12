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
        MaterialPageRoute(builder: (context) => QuestionsTestScreen()),
      ),
      child: Column(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Preguntas ${licenseTestIdGroup.quantityQuestions}",
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
