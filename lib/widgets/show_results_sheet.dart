import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/custom_counter.dart';
import 'package:bmi_calculator/widgets/input_view_body.dart';
import 'package:flutter/material.dart';

enum Status { underweight, normal, overweight, obese }

class ShowResultsSheet extends StatelessWidget {
  ShowResultsSheet({super.key});

  final double bmi =
      (InputViewBody.weight / (InputViewBody.height * InputViewBody.height)) *
          10000;
  late Status status = Status.normal;

  final Map<Status, String> statusMessages = {
    Status.underweight:
        'A BMI of less than 18.5 indicates that you are underweight for your height. Being underweight can weaken your immune system, lead to nutritional deficiencies, and increase the risk of health issues such as osteoporosis and anemia. Its important to aim for a balanced diet and consult a healthcare professional to reach a healthy weight.',
    Status.normal:
        'A BMI of 18.5 - 24.9 indicates that you are at a healthy weight for your height. By maintaining a healthy weight, you lower your risk of developing serious health problems such as heart disease, diabetes, and high blood pressure. Continue to follow a balanced diet and stay physically active to sustain your well-being.',
    Status.overweight:
        'A BMI of 25 - 29.9 suggests that you are overweight for your height. Carrying excess weight can increase your risk of developing health problems such as type 2 diabetes, high blood pressure, and heart disease. Adopting a healthier lifestyle, including a balanced diet and regular exercise, can help you achieve a healthier weight.',
    Status.obese:
        'A BMI of 30 or higher indicates obesity, which means you are carrying excess body fat for your height. Obesity significantly raises the risk of serious health conditions, including heart disease, stroke, type 2 diabetes, and certain cancers. Managing weight through a combination of healthy eating, physical activity, and medical guidance is crucial for improving overall health and reducing these risks.'
  };
  @override
  Widget build(BuildContext context) {
    if (bmi <= 18.6) {
      status = Status.underweight;
    } else if (bmi <= 24.9) {
      status = Status.normal;
    } else if (bmi <= 39.9) {
      status = Status.overweight;
    } else {
      status = Status.obese;
    }

    return DefaultTextStyle(
      style: TextStyle(color: Colors.white, fontSize: 18),
      child: Container(
        width: double.infinity,
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('Gender is ${InputViewBody.gender.name}'),
              Text('Age = ' '${CustomCounter.counter.toString()}' ' years'),
              Text('Height = ${InputViewBody.height} cm'),
              Text('Weight = ${InputViewBody.weight} kg'),
              SizedBox(height: 20),
              Text('Your BMI is'),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${bmi.toStringAsFixed(1)} kg/m',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Text(
                        '2',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10)
                    ],
                  )
                ],
              ),
              SizedBox(height: 5),
              Text(status.name, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(
                textAlign: TextAlign.center,
                statusMessages[status]!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
