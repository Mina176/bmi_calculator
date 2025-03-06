import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/custom_counter.dart';
import 'package:flutter/material.dart';

class AgeCard extends StatefulWidget {
  AgeCard({super.key, this.age});

  int? age = 24;

  @override
  State<AgeCard> createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35),
        Text(
          'Age',
          style: kTextStyle,
        ),
        SizedBox(
          height: 40,
        ),
        CustomCounter()
      ],
    );
  }
}
