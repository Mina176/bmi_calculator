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

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double currentSliderPrimaryValue = 173;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(style: DefaultTextStyle.of(context).style, children: [
            TextSpan(
              text: currentSliderPrimaryValue.toInt().toString(),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'cm')
          ]),
        ),
        Slider(
            value: currentSliderPrimaryValue,
            min: 140,
            max: 230,
            activeColor: Colors.blue,
            onChanged: (value) {
              setState(() {
                currentSliderPrimaryValue = value;
              });
            }),
      ],
    );
  }
}
