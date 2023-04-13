import 'package:driver_spain_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BottomNextQuestionSection extends StatelessWidget {
  const BottomNextQuestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.grey[200],
            ),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {
                  // Insert your logic for the previous button here
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 18,
                    color: Styles.orangeDark,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.grey[200],
            ),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {
                  // TO DO
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: Styles.orangeDark,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
