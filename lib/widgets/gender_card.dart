import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatefulWidget {
  GenderCard({
    super.key,
    required this.gender,
    required this.borderColor,
    required this.icon,
    required this.iconColor,
  });

  final String gender;

  Color borderColor;

  final IconData icon;

  Color iconColor;

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.borderColor = kPrimaryColor;
          });
        },
        child: Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: widget.borderColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.icon, size: 80, color: widget.iconColor),
                SizedBox(
                  height: 25,
                ),
                Text(
                  widget.gender,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )
              ],
            )));
  }
}
