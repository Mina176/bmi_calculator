import 'package:flutter/material.dart';

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
