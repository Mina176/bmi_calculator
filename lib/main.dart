import 'package:bmi_calculator/widgets/gender_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                GenderCard(
                  gender: 'male',
                ),
                GenderCard(
                  gender: 'female',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
