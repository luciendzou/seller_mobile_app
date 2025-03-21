import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:seller_mobile_app/auth/widgets/custom_screen.dart';
import 'package:seller_mobile_app/home/widgets/cart_home.dart';
import 'package:seller_mobile_app/home/widgets/product_grid.dart';
import 'package:seller_mobile_app/home/widgets/product_home.dart';
import 'package:seller_mobile_app/home/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SearchBarWidget(),
                  SizedBox(height: 15),
                  HomeCategories(),
                  SizedBox(height: 15),
                  FeaturesProducts(title: "Featured Products",),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(color: const Color(0xFF002542)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        "Get what your find",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          height: 1,
                        ),
                      ),
                    ),
                    Text(
                      "-80%",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 60,
                        height: 1,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: FeaturesProducts(title: "Popular Products",),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: FeaturesProducts(title: "Best Selling",),
            ),
          ],
        ),
      ),
    );
  }
}
