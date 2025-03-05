import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/custom_general_card.dart';
import 'package:bmi_calculator/widgets/gender_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatefulWidget {
  HomeView({
    super.key,
  });

  static final String routeName = 'Home Page';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Color currentBorderColor = kInactiveBorderColor;
  Color maleCardColor = kInactiveBorderColor;
  Color femaleCardColor = kInactiveBorderColor;

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
              cardChild: Placeholder(),
            ),
            Expanded(
              child: Row(
                children: [
                  CustomGeneralCard(
                    cardChild: Placeholder(),
                  ),
                  CustomGeneralCard(
                    cardChild: Placeholder(),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
