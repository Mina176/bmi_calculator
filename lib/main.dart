import 'package:bmi_calculator/widgets/custom_slider.dart';
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
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 219, 219, 219),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 150,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "HEIGHT   ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    CustomSlider()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

