import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/horizontal_slider.dart';
import 'package:bmi_calculator/widgets/age_card.dart';
import 'package:bmi_calculator/widgets/custom_general_card.dart';
import 'package:bmi_calculator/widgets/gender_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

class InputView extends StatefulWidget {
  const InputView({
    super.key,
  });

  static final String routeName = 'Home Page';

  @override
  State<InputView> createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {
  Color maleCardColor = kInactiveBorderColor;
  Color femaleCardColor = kInactiveBorderColor;

  int height = 173;
  int weight = 83;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GenderCard(
                    onTap: () {
                      setState(() {
                        if (maleCardColor == kInactiveBorderColor) {
                          maleCardColor = kPrimaryColor;
                          femaleCardColor = kInactiveBorderColor;
                        }
                      });
                    },
                    borderColor: maleCardColor,
                    gender: 'male',
                    icon: FontAwesomeIcons.mars,
                    iconColor: kMaleColor,
                  ),
                ),
                Expanded(
                  child: GenderCard(
                    onTap: () {
                      setState(() {
                        if (femaleCardColor == kInactiveBorderColor) {
                          femaleCardColor = kPrimaryColor;
                          maleCardColor = kInactiveBorderColor;
                        }
                      });
                    },
                    borderColor: femaleCardColor,
                    gender: 'female',
                    icon: FontAwesomeIcons.venus,
                    iconColor: kFemaleColor,
                  ),
                ),
              ],
            ),
          ),
          CustomGeneralCard(
            cardChild: Center(
              child: HorizontalSlider(
                label: 'Height (in cm)',
                height: height,
                controller: WeightSliderController(
                    initialWeight: height,
                    interval: 1,
                    minWeight: 120,
                    maxWeight: 240),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                CustomGeneralCard(
                  cardChild: HorizontalSlider(
                    label: 'Weight (in Kg)',
                    height: weight,
                    controller: WeightSliderController(
                        initialWeight: weight,
                        interval: 1,
                        minWeight: 40,
                        maxWeight: 200),
                  ),
                ),
                CustomGeneralCard(
                  cardChild: AgeCard(),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.forward),
            onPressed: () {
              Navigator.pushNamed(context, HorizontalSlider.routeName);
            },
          )
        ],
      ),
    );
  }
}
