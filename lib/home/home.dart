import 'package:flutter/material.dart';
import 'package:seller_mobile_app/auth/widgets/custom_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScreen(child: Center(
      child: Text("Welcome Home dear"),
    ));
  }
}