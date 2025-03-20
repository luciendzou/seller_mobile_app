import 'package:flutter/material.dart';
import 'package:seller_mobile_app/home/widgets/product_grid.dart';

class FeaturesProducts extends StatelessWidget {
  const FeaturesProducts({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 430,
          child: GridView(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.8,
            ),
            children: [
              ProductGrid(),
              ProductGrid(),
              ProductGrid(),
              ProductGrid(),
            ],
          ),
        ),
      ],
    );
  }
}