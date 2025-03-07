import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/custom_counter.dart';
import 'package:flutter/material.dart';

class AgeCard extends StatelessWidget {
  const AgeCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Age',
          style: kTextStyle,
        ),
        SizedBox(
          height: 32,
        ),
        CustomCounter()
      ],
    );
  }
}
