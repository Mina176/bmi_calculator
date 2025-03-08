import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/input_view_body.dart';
import 'package:bmi_calculator/widgets/show_results_sheet.dart';
import 'package:flutter/material.dart';
  enum Gender { male, female }

class InputView extends StatefulWidget {
  const InputView({
    super.key,
  });
   

  @override
  State<InputView> createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return ShowResultsSheet();
              });
        },
        backgroundColor: kSecondaryColor,
        child: const Text('BMI',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        notchMargin: 12,
        shape: const CircularNotchedRectangle(),
        color: kPrimaryColor,
        child: Container(
          width: 50,
        ),
      ),
      body: InputViewBody(),
    );
  }
}
