import 'package:flutter/material.dart';

class CustomCounterIcon extends StatelessWidget {
  const CustomCounterIcon({super.key, required this.icon, required this.onTap});

  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            border: Border.all(width: 2.5, color: const Color(0xff94969C)),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF94969C),
            size: 18,
          )),
    );
  }
}
