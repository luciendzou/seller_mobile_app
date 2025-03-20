
import 'package:flutter/material.dart';

class CartCategory extends StatelessWidget {
  const CartCategory({super.key, required this.abr, required this.name});
  final String abr, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Text(
              abr,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
          ),
        ),
        Text(name, style: TextStyle(fontWeight: FontWeight.w100, fontSize: 16)),
      ],
    );
  }
}