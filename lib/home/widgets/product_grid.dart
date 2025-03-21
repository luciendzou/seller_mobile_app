
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 185,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0x76001E3A),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/products/parfum.jpg",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Shoes",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 10,
                ),
              ),
              Text(
                "Air Max 44 Pro 2015",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.star5,
                        size: 14,
                        color: Colors.amber,
                      ),
                      Text(
                        " | 3.5/5",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    NumberFormat.simpleCurrency(
                      locale: 'en_US',
                      decimalDigits: 1,
                    ).format(25),
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.blueGrey[100],
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}