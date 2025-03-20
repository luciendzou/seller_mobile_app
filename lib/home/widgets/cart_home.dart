
import 'package:flutter/material.dart';
import 'package:seller_mobile_app/home/widgets/cart_category.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),

              TextButton(onPressed: () {}, child: Text("See more")),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                CartCategory(abr: 'Sh', name: 'Shoes'),
                CartCategory(abr: 'Ch', name: 'Chloths'),
                CartCategory(abr: 'BW', name: 'Bewely'),
                CartCategory(abr: 'Bg', name: 'Bags'),
                CartCategory(abr: 'Dr', name: 'Dresses'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}