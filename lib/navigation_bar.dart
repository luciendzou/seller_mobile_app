import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:seller_mobile_app/home/home.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =  Get.put(NavigationBarController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        title: Text("Shopely"),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Iconsax.notification_status)),
              IconButton(onPressed: (){}, icon: Icon(Iconsax.shopping_bag))
            ],
          ),)
        ],
      ),
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value = index,
          destinations: [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Whislist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ]),
      ),
      body: Obx(()=>controller.Screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationBarController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final Screens = [
    HomePage(),
    Container(color: Colors.redAccent,),
    Container(color: Colors.greenAccent,),
    Container(color: Colors.blueAccent,),
  ];
}