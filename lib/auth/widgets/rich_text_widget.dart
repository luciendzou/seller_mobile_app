import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key, required this.title, required this.subtitle, required this.fontSizeT, required this.fontSizeS,
  });

  final String title, subtitle;
  final double fontSizeT, fontSizeS;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
            text: "$title\n",
            style: TextStyle(
                fontSize: fontSizeT,
                color: const Color.fromARGB(255, 1, 24, 51),
                fontWeight: FontWeight.w600)),
        TextSpan(
            text: subtitle,
            style: TextStyle(
              fontSize: fontSizeS,
              color: const Color.fromARGB(255, 24, 41, 61),
            )),
      ]),
    );
  }
}