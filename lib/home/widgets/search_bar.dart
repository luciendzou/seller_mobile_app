import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFB808080)),
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Iconsax.search_normal),
            ),
          ),
        ],
      ),
    );
  }
}
