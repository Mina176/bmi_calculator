import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomGeneralCard extends StatelessWidget {
  CustomGeneralCard({
    super.key,
    this.borderColor = const Color(0xffdbdbdb),
    required this.cardChild,
  });

  Color borderColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: borderColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: cardChild,
      ),
    );
  }
}
