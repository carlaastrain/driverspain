import 'package:flutter/material.dart';

class TitleScroller extends StatefulWidget {
  final String title;
  const TitleScroller({super.key, required this.title});

  @override
  State<TitleScroller> createState() => _TitleScrollerState();
}

class _TitleScrollerState extends State<TitleScroller> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30.0),
      child: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
