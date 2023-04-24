import 'package:driver_spain_app/utils/app_layout.dart';
import 'package:flutter/material.dart';

class RowSettingsWidgetWithIcon extends StatelessWidget {
  final String radius;
  final String leftText;
  final IconData icon;

  const RowSettingsWidgetWithIcon({
    super.key,
    required this.radius,
    required this.leftText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: AppLayout.getScreenWidth() * 0.92,
          height: 33,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: radius == 'top'
                ? const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )
                : radius == 'bottom'
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )
                    : null,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.blueAccent,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    leftText,
                    style: const TextStyle(color: Colors.blueAccent),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
