import 'package:flutter/material.dart';
import 'package:seller_mobile_app/auth/login.dart';
import 'package:seller_mobile_app/auth/signup.dart';
import 'package:seller_mobile_app/auth/widgets/custom_btn.dart';

import 'widgets/custom_screen.dart';

class SetUpPage extends StatelessWidget {
  const SetUpPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: Column(
        children: [
          Flexible(
              child: Container(
                width: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Shopely-black.png"),
                fit: BoxFit.contain,
              ),
            ),
          )),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(22),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                        text: "Welcome back !\n",
                        style: TextStyle(
                            fontSize: 32.8,
                            color: Color.fromARGB(255, 1, 24, 51),
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: "\nEnter your personnal's informations to start shopping with the good place",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromARGB(255, 24, 41, 61),
                        )),
                  ]),
                ),
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomBtn(
                        name: 'Log In',
                        colors: const Color(0xFFF1F1F1),
                        borderRaduis: const BorderRadius.only(
                            topRight: Radius.circular(50)),
                        textColors: Colors.black,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (e) => const LoginPage()));
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomBtn(
                        name: 'Sign In',
                        colors: const Color(0xFF012483),
                        borderRaduis: const BorderRadius.only(
                            topLeft: Radius.circular(50)),
                        textColors: Colors.white,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (e) => const SignupPage()));
                        },
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
