import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Hello", style: Styles.headlineStyle1),
          const Gap(5),
          Text('Time to learn',
              style: Styles.headlineStyle3.copyWith(color: Colors.grey)),
        ]),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Styles.primaryColor,
              maxRadius: AppLayout.getHeight(30),
              child: Icon(
                Icons.settings_accessibility,
                color: Colors.white,
                size: AppLayout.getHeight(27),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
