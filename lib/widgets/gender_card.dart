import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.gender,
    required this.borderColor,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

   final  Gender gender;

  final Color borderColor;

  final IconData icon;

  final Color iconColor;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(width: 4, color: borderColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 80, color: iconColor),
                SizedBox(
                  height: 25,
                ),
                Text(
                 gender.name ,
                  style: kTextStyle,
                )
              ],
            )));
  }
}
