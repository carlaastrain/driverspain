import 'package:driver_spain_app/utils/app_layout.dart';
import 'package:driver_spain_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RowSettingsWidget extends StatelessWidget {
  final bool radiusBoolean;
  const RowSettingsWidget({super.key, required this.radiusBoolean});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: AppLayout.getScreenWidth() * 0.96,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(width: 1.0, color: Styles.bgColor),
            ),
            borderRadius: radiusBoolean
                ? const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
