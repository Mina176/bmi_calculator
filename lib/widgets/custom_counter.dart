import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/custom_counter_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({
    super.key,
  });

  static int counter = 22;

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomCounterButton(
        icon: FontAwesomeIcons.minus,
        onTap: () {
          setState(() {
            CustomCounter.counter <= 0
                ? CustomCounter.counter = 0
                : CustomCounter.counter--;
          });
        },
      ),
      SizedBox(
        width: 80,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            CustomCounter.counter.toString(),
            style: kNumberTextStyle,
          ),
        ),
      ),
      CustomCounterButton(
        icon: FontAwesomeIcons.plus,
        onTap: () {
          setState(() {
            CustomCounter.counter >= 99
                ? CustomCounter.counter = 99
                : CustomCounter.counter++;
          });
        },
      )
    ]);
  }
}
