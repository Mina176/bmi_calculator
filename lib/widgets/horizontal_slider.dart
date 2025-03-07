import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

// ignore: must_be_immutable
class HorizontalSlider extends StatefulWidget {
  const HorizontalSlider({
    super.key,
    required this.controller,
    required this.label,
    required this.unit,
    required this.onChanged,
    required this.initalvalue,
  });
  static final String routeName = 'Test View';

  final String label;

  final WeightSliderController controller;

  final int initalvalue;

  final String unit;

  final void Function(int) onChanged;

  @override
  State<HorizontalSlider> createState() => _HorizontalSliderState();
}

class _HorizontalSliderState extends State<HorizontalSlider> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              widget.label,
              style: kTextStyle,
            ),
            Text(
              "${widget.initalvalue} ${widget.unit}",
              style: kNumberTextStyle,
            ),
            SizedBox(
              height: 50,
              child: VerticalWeightSlider(
                isVertical: false,
                controller: widget.controller,
                decoration: const PointerDecoration(
                  width: 30.0,
                  height: 3.0,
                  pointerColor: Color(0xFF898989),
                  gap: 0.0,
                ),
                onChanged: widget.onChanged,
                indicator: Container(
                  height: 3.0,
                  width: 50.0,
                  alignment: Alignment.centerLeft,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
