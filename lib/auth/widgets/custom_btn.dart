import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.name, required this.colors, required this.borderRaduis, required this.textColors, required this.onTap});

final String name;
final Color colors, textColors;
final BorderRadius borderRaduis;
final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration:  BoxDecoration(
          color: colors,
          borderRadius: borderRaduis,
        ),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: textColors),
        ),
      ),
    );
  }
}
