import 'package:bmi_calculator/views/input_view.dart';
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
      home: InputView(),
      initialRoute: InputView.routeName,
      routes: {
        InputView.routeName: (context) => InputView(),
        
      },
    );
  }
}
