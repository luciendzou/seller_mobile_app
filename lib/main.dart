import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seller_mobile_app/onboard/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth/setup.dart';
import 'constants/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showLogin = prefs.getBool('ShowLogin') ?? false;
  runApp(MyApp(showLogin: showLogin));
}

class MyApp extends StatelessWidget {
  final bool showLogin;
  const MyApp({super.key, required this.showLogin});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopely',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      navigatorKey: Get.key,
      home: AnimatedSplashScreen(
        splash: 'assets/gif/Seller-anim.gif',
        splashIconSize: 250.0,
        centered: true,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: showLogin ? const SetUpPage() : const Onboarding(),
        backgroundColor: Colors.white,
        duration: 2500,
      ),
    );
  }
}
