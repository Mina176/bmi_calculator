import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});
  static final String routeName = 'Test View';

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  late WeightSliderController _controller;

  int height = 170;

  @override
  void initState() {
    super.initState();
    _controller = WeightSliderController(
        initialWeight: height, minWeight: 120, interval: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test View'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(
              'Height (in cm)',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
            Text(
              "$height",
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50,
              child: VerticalWeightSlider(
                isVertical: false,
                controller: _controller,
                decoration: const PointerDecoration(
                  width: 30.0,
                  height: 3.0,
                  pointerColor: Color(0xFF898989),
                  gap: 0.0,
                ),
                onChanged: (int value) {
                  setState(() {
                    height = value;
                  });
                },
                indicator: Container(
                  height: 3.0,
                  width: 50.0,
                  alignment: Alignment.centerLeft,
                  color: kPrimaryColor,
                ),
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 80,
                ))
          ],
        ));
  }
}
