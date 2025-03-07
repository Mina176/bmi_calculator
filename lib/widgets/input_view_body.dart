import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/horizontal_slider.dart';
import 'package:bmi_calculator/widgets/age_card.dart';
import 'package:bmi_calculator/widgets/custom_general_card.dart';
import 'package:bmi_calculator/widgets/gender_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

class InputViewBody extends StatefulWidget {
  const InputViewBody({super.key});
  static Color maleCardColor = kPrimaryColor;
  static Color femaleCardColor = kInactiveBorderColor;
  static int height = 172;
  static int weight = 58;
  static Gender gender = Gender.male;
  @override
  State<InputViewBody> createState() => _InputViewBodyState();
}

class _InputViewBodyState extends State<InputViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Row(
          children: [
            SizedBox(width: 20),
            Text(
              'BMI Calculator',
              style: kTitleTextStyle,
            ),
          ],
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GenderCard(
                  onTap: () {
                    setState(() {
                      if (InputViewBody.maleCardColor == kInactiveBorderColor) {
                        InputViewBody.maleCardColor = kPrimaryColor;
                        InputViewBody.femaleCardColor = kInactiveBorderColor;
                      }
                    });
                  },
                  borderColor: InputViewBody.maleCardColor,
                  gender: Gender.male,
                  icon: FontAwesomeIcons.mars,
                  iconColor: kMaleColor,
                ),
              ),
              Expanded(
                child: GenderCard(
                  onTap: () {
                    setState(() {
                      if (InputViewBody.femaleCardColor ==
                          kInactiveBorderColor) {
                        InputViewBody.femaleCardColor = kPrimaryColor;
                        InputViewBody.maleCardColor = kInactiveBorderColor;
                      }
                    });
                  },
                  borderColor: InputViewBody.femaleCardColor,
                  gender: Gender.female,
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
                    initalvalue: InputViewBody.height,
                    onChanged: (value) {
                      setState(() {
                        InputViewBody.height = value;
                      });
                    },
                    label: 'Height',
                    unit: 'cm',
                    controller: WeightSliderController(
                        initialWeight: InputViewBody.height,
                        interval: 1,
                        minWeight: 120,
                        maxWeight: 240)))),
        Expanded(
          child: Row(
            children: [
              CustomGeneralCard(
                  cardChild: HorizontalSlider(
                      initalvalue: InputViewBody.weight,
                      onChanged: (value) {
                        setState(() {
                          InputViewBody.weight = value;
                        });
                      },
                      label: 'Weight',
                      unit: 'kg',
                      controller: WeightSliderController(
                          initialWeight: InputViewBody.weight,
                          interval: 1,
                          minWeight: 40,
                          maxWeight: 200))),
              CustomGeneralCard(
                cardChild: AgeCard(),
              ),
            ],
          ),
        ),
        SizedBox(height: 60)
      ],
    );
  }
}
