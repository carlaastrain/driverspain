import 'package:driver_spain_app/utils/app_layout.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final bool isSelected;
  final bool isCorrect;
  final String label;
  final VoidCallback? onTap;

  const CustomRadio(
      {super.key,
      required this.isSelected,
      this.onTap,
      required this.label,
      required this.isCorrect});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isSelected && isCorrect
          ? Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 22.0,
                  height: 22.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: const Icon(
                    Icons.check,
                    size: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: AppLayout.getScreenWidth() * 0.8,
                  child: Text(label),
                )
              ],
            )
          : isSelected && !isCorrect
              ? Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 22.0,
                      height: 22.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: AppLayout.getScreenWidth() * 0.8,
                      child: Text(label),
                    )
                  ],
                )
              : Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 22.0,
                      height: 22.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1.5,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppLayout.getScreenWidth() * 0.8,
                      child: Text(label),
                    )
                  ],
                ),
    );
  }
}
