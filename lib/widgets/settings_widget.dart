import 'package:driver_spain_app/utils/app_layout.dart';
import 'package:flutter/material.dart';

class RowSettingsWidget extends StatelessWidget {
  final String radius;
  const RowSettingsWidget({super.key, required this.radius});

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
        ),
      ],
    );
  }
}
