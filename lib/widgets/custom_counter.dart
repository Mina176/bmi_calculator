
import 'package:bmi_calculator/widgets/custom_counter_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({
    super.key,
  });

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int counter = 24;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomCounterIcon(
        icon: FontAwesomeIcons.minus,
        onTap: () {
          setState(() {
            counter--;
          });
        },
      ),
      SizedBox(width: 20),
      Text(
        counter.toString(),
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      SizedBox(width: 20),
      CustomCounterIcon(
        icon: FontAwesomeIcons.plus,
        onTap: () {
          setState(() {
            counter++;
          });
        },
      )
    ]);
  }
}