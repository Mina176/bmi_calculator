import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.gender,
  });

  final String gender;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 219, 219, 219),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Image.asset('images/$gender.png'),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  gender,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
