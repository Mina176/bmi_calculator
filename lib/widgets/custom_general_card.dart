import 'package:flutter/material.dart';

class CustomGeneralCard extends StatelessWidget {
  const CustomGeneralCard({
    super.key,
    required this.cardChild,
  });

  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: const Color(0xffdbdbdb)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: cardChild,
      ),
    );
  }
}
